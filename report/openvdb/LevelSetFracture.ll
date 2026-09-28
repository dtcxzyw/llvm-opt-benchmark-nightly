Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetFracture?download=true
inline.NumInlined: 28418
inline.NumDeleted: 8805
loop-unroll.NumCompletelyUnrolled: 91
loop-unroll.NumRuntimeUnrolled: 122
loop-unroll.NumUnrolled: 449
begin_hunk_0_@_ZN7openvdb5v13_05tools10local_util9decomposeIdEEiRKNS0_4math4Mat4IT_EERNS4_4Vec3IS6_EESC_SC_:bb.a
  %i.do = extractelement <2 x double> %i.u, i64 1 ; 2 uses
  %i.dp = shufflevector <2 x double> %i.dk, <2 x double> %i.v, <2 x i32> <i32 0, i32 2>
  %i.dq = shufflevector <2 x double> %i.dg, <2 x double> %i.t, <2 x i32> <i32 0, i32 2>
  %i.dr = shufflevector <2 x double> %i.di, <2 x double> %i.u, <2 x i32> <i32 0, i32 2>
  %i.ds = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dt = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.du = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.d

bb.d:                                             ; preds = %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit, %.thread285
  %.026306 = phi i64 [ 0, %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit ], [ %i.qt, %.thread285 ] ; 3 uses
  %.027305 = phi double [ f0x7FEFFFFFFFFFFFFF, %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit ], [ %.5292, %.thread285 ] ; 11 uses
  %.030304 = phi i1 [ false, %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit ], [ %.535291, %.thread285 ] ; 10 uses
  %.036303 = phi i1 [ false, %_ZNK7openvdb5v13_04math4Vec3IdE2eqERKS3_d.exit ], [ %.541290, %.thread285 ] ; 10 uses
  %i.dv = and i64 %.026306, 2
  %.not47 = icmp eq i64 %i.dv, 0
  %i.dw = select i1 %.not47, double %sqrt.i51, double %i.cn ; 5 uses
  %i.dx = insertelement <2 x i64> poison, i64 %.026306, i64 0
  %i.dy = shufflevector <2 x i64> %i.dx, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.dz = and <2 x i64> %i.dy, <i64 -1, i64 1>
  %i.ea = icmp samesign ult <2 x i64> %i.dz, <i64 4, i64 1>
  %i.eb = select <2 x i1> %i.ea, <2 x double> %i.bl, <2 x double> %i.co ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i8 0, i64 24, i1 false), !alias.scope !3528
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i8 0, i64 24, i1 false), !alias.scope !3528
  %i.ec = extractelement <2 x double> %i.eb, i64 1 ; 4 uses
  store double %i.ec, ptr %8, align 8, !tbaa !335, !alias.scope !3528
  store double %i.dw, ptr %i.cq, align 8, !tbaa !335, !alias.scope !3528
  %i.ed = extractelement <2 x double> %i.eb, i64 0 ; 4 uses
  store double %i.ed, ptr %i.cs, align 8, !tbaa !335, !alias.scope !3528
  call void @_ZNK7openvdb5v13_04math4Mat3IdE7inverseEd(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Mat3") align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %8, double noundef 0.000000e+00)
  %i.ee = load double, ptr %i.cu, align 16, !tbaa !335, !noalias !3529 ; 2 uses
  %i.ef = load <2 x double>, ptr %7, align 16, !tbaa !335, !noalias !3529 ; 3 uses
  %i.eg = load <2 x double>, ptr %i.ct, align 8, !tbaa !335, !noalias !3529 ; 3 uses
  %i.eh = fmul <2 x double> %i.ds, %i.eg
  %i.ei = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.ef, <2 x double> %i.eh) ; 2 uses
  %i.ej = load <2 x double>, ptr %i.cv, align 8
  %i.ek = load double, ptr %i.cw, align 16, !tbaa !335, !noalias !3529
  %i.el = load double, ptr %i.cx, align 8, !tbaa !335, !noalias !3529 ; 3 uses
  %i.em = fmul double %i.dn, %i.el
  %i.en = insertelement <2 x double> %i.ej, double %i.ek, i64 1 ; 3 uses
  %i.eo = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ep = insertelement <2 x double> %i.eo, double %i.em, i64 1
  %i.eq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dq, <2 x double> %i.en, <2 x double> %i.ep) ; 2 uses
  %i.er = load double, ptr %i.cy, align 16, !tbaa !335, !noalias !3529 ; 3 uses
  %i.es = extractelement <2 x double> %i.eq, i64 1
  %i.et = call double @llvm.fmuladd.f64(double %.sroa.13242.0.copyload, double %i.er, double %i.es)
  %i.eu = fmul <2 x double> %i.dt, %i.eg
  %i.ev = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dh, <2 x double> %i.ef, <2 x double> %i.eu) ; 2 uses
  %i.ew = fmul double %i.do, %i.el
  %i.ex = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ey = insertelement <2 x double> %i.ex, double %i.ew, i64 1
  %i.ez = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.en, <2 x double> %i.ey) ; 4 uses
  %i.fa = extractelement <2 x double> %i.ez, i64 0 ; 2 uses
  %i.fb = extractelement <2 x double> %i.ez, i64 1
  %i.fc = fmul <2 x double> %i.du, %i.eg
  %i.fd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.ef, <2 x double> %i.fc) ; 2 uses
  %i.fe = fmul double %i.aj, %i.el
  %i.ff = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fg = insertelement <2 x double> %i.ff, double %i.fe, i64 1
  %i.fh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %i.en, <2 x double> %i.fg) ; 3 uses
  %i.fi = extractelement <2 x double> %i.fh, i64 0 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.fj = call double @llvm.fmuladd.f64(double %.sroa.29.24.copyload, double %i.er, double %i.fb) ; 4 uses
  %i.fk = insertelement <2 x double> poison, double %i.er, i64 0
  %i.fl = insertelement <2 x double> %i.fk, double %i.ee, i64 1
  %i.fm = shufflevector <2 x double> %i.fh, <2 x double> %i.fd, <2 x i32> <i32 1, i32 2>
  %i.fn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> %i.fl, <2 x double> %i.fm) ; 6 uses
  %i.fo = fneg double %i.fi                       ; 2 uses
  %i.fp = fmul double %i.fj, %i.fo
  %i.fq = extractelement <2 x double> %i.fn, i64 0 ; 2 uses
  %i.fr = fneg double %i.fq
  %i.fs = insertelement <2 x double> %i.ez, double %i.fj, i64 1
  %i.ft = insertelement <2 x double> poison, double %i.fp, i64 0
  %i.fu = extractelement <2 x double> %i.fn, i64 1 ; 3 uses
  %i.fv = insertelement <2 x double> poison, double %i.ee, i64 0
  %i.fw = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fx = shufflevector <2 x double> %i.ev, <2 x double> %i.ei, <2 x i32> <i32 0, i32 2>
  %i.fy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> %i.fw, <2 x double> %i.fx) ; 3 uses
  %i.fz = extractelement <2 x double> %i.fy, i64 0 ; 2 uses
  %i.ga = fmul double %i.fz, %i.fr
  %i.gb = insertelement <2 x double> %i.ft, double %i.ga, i64 1
  %i.gc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> %i.fn, <2 x double> %i.gb) ; 2 uses
  %i.gd = shufflevector <2 x double> %i.ez, <2 x double> %i.eq, <2 x i32> <i32 0, i32 2>
  %i.ge = fneg <2 x double> %i.fn
  %i.gf = shufflevector <2 x double> %i.gc, <2 x double> %i.ge, <2 x i32> <i32 3, i32 1>
  %i.gg = fmul <2 x double> %i.gd, %i.gf
  %i.gh = shufflevector <2 x double> %i.fh, <2 x double> %i.gc, <2 x i32> <i32 0, i32 2>
  %i.gi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fy, <2 x double> %i.gh, <2 x double> %i.gg) ; 2 uses
  %i.gj = extractelement <2 x double> %i.gi, i64 0
  %i.gk = extractelement <2 x double> %i.gi, i64 1
  %i.gl = call noundef double @llvm.fmuladd.f64(double %i.et, double %i.gj, double %i.gk)
  %i.gm = fcmp olt double %i.gl, 0.000000e+00
  br i1 %i.gm, label %.thread285, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.gn = fadd double %i.fu, -1.000000e+00
  %i.go = call noundef double @llvm.fabs.f64(double %i.gn)
  %i.gp = fcmp ule double %i.go, 1.000000e-08
  br i1 %i.gp, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.gq = call double @atan2(double noundef %i.fj, double noundef %i.fa) #24, !noalias !3530
  %i.gr = fmul double %i.gq, 5.000000e-01         ; 2 uses
  br label %_ZN7openvdb5v13_04math11eulerAnglesINS1_4Mat3IdEEEENS1_4Vec3INT_10value_typeEEERKS6_NS1_13RotationOrderES7_.exit

bb.g:                                             ; preds = %bb.e
  %i.gs = fadd double %i.fu, 1.000000e+00
  %i.gt = call noundef double @llvm.fabs.f64(double %i.gs)
  %i.gu = fcmp ule double %i.gt, 1.000000e-08
  br i1 %i.gu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.gv = call double @atan2(double noundef %i.fj, double noundef %i.fa) #24, !noalias !3530
  %i.gw = fmul double %i.gv, 5.000000e-01         ; 2 uses
  %i.gx = fneg double %i.gw
  br label %_ZN7openvdb5v13_04math11eulerAnglesINS1_4Mat3IdEEEENS1_4Vec3INT_10value_typeEEERKS6_NS1_13RotationOrderES7_.exit

bb.i:                                             ; preds = %bb.g
  %i.gy = fneg double %i.fz
  %i.gz = extractelement <2 x double> %i.fy, i64 1
  %i.ha = call double @atan2(double noundef %i.gy, double noundef %i.gz) #24, !noalias !3530
  %i.hb = call double @atan2(double noundef %i.fo, double noundef %i.fq) #24, !noalias !3530
  %foldExtExtBinop = fmul <2 x double> %i.fn, %i.fn
  %i.hc = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.hd = call double @llvm.fmuladd.f64(double %i.fi, double %i.fi, double %i.hc)
  %sqrt.i53 = call double @llvm.sqrt.f64(double %i.hd)
  %i.he = call double @atan2(double noundef %i.fu, double noundef %sqrt.i53) #24, !noalias !3530
  br label %_ZN7openvdb5v13_04math11eulerAnglesINS1_4Mat3IdEEEENS1_4Vec3INT_10value_typeEEERKS6_NS1_13RotationOrderES7_.exit

_ZN7openvdb5v13_04math11eulerAnglesINS1_4Mat3IdEEEENS1_4Vec3INT_10value_typeEEERKS6_NS1_13RotationOrderES7_.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.7180.sink.i = phi double [ %i.hb, %bb.i ], [ %i.gr, %bb.f ], [ %i.gw, %bb.h ] ; 4 uses
  %.7.sink.i = phi double [ %i.he, %bb.i ], [ f0x3FF921FB54442D18, %bb.f ], [ f0xBFF921FB54442D18, %bb.h ] ; 4 uses
  %.7172.sink.i = phi double [ %i.ha, %bb.i ], [ %i.gr, %bb.f ], [ %i.gx, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.cz, align 8, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !3531
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24, !noalias !3532
  call void @_ZNK7openvdb5v13_04math4Vec3IdE4unitEdRd(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %9, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !3531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24, !noalias !3532
  %i.hf = call double @cos(double noundef %.7172.sink.i) #24, !noalias !3531
  %i.hg = call double @sin(double noundef %.7172.sink.i) #24, !noalias !3531 ; 3 uses
  %i.hh = load <2 x double>, ptr %6, align 16, !tbaa !335, !noalias !3531 ; 4 uses
  %i.hi = fmul <2 x double> %i.hh, %i.hh
  %i.hj = insertelement <2 x double> poison, double %i.hf, i64 0 ; 2 uses
  %i.hk = shufflevector <2 x double> %i.hj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hl = load double, ptr %i.da, align 16, !tbaa !335, !noalias !3531 ; 4 uses
  %i.hm = extractelement <2 x double> %i.hh, i64 0 ; 3 uses
  %i.hn = extractelement <2 x double> %i.hh, i64 1 ; 3 uses
  %i.ho = fmul double %i.hn, %i.hl
  %i.hp = fmul double %i.hg, %i.hm                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !3531
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %10, align 16, !tbaa !335
  store double 0.000000e+00, ptr %i.db, align 16, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !3533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !3534
  call void @_ZNK7openvdb5v13_04math4Vec3IdE4unitEdRd(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %10, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !3533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !3534
  %i.hq = call double @cos(double noundef %.7.sink.i) #24, !noalias !3533 ; 2 uses
  %i.hr = call double @sin(double noundef %.7.sink.i) #24, !noalias !3533 ; 2 uses
  %i.hs = load double, ptr %5, align 8, !tbaa !335, !noalias !3533 ; 4 uses
  %i.ht = insertelement <2 x double> %i.hj, double %i.hq, i64 1 ; 2 uses
  %i.hu = fsub <2 x double> splat (double 1.000000e+00), %i.ht ; 5 uses
  %i.hv = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hi, <2 x double> %i.hv, <2 x double> %i.hk) ; 3 uses
  %i.hx = extractelement <2 x double> %i.hu, i64 0 ; 3 uses
  %i.hy = fmul double %i.hx, %i.ho                ; 2 uses
  %i.hz = insertelement <2 x double> poison, double %i.hl, i64 0
  %i.ia = insertelement <2 x double> %i.hz, double %i.hs, i64 1 ; 2 uses
  %i.ib = fmul <2 x double> %i.ia, %i.ia
  %i.ic = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ib, <2 x double> %i.hu, <2 x double> %i.ht) ; 2 uses
  %i.id = extractelement <2 x double> %i.hu, i64 1
  %i.ie = load <2 x double>, ptr %i.dc, align 8, !tbaa !335, !noalias !3533 ; 7 uses
  %i.if = fmul <2 x double> %i.ie, %i.ie
  %i.ig = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ih = insertelement <2 x double> poison, double %i.hq, i64 0
  %i.ii = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ij = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.if, <2 x double> %i.ig, <2 x double> %i.ii) ; 3 uses
  %i.ik = extractelement <2 x double> %i.ie, i64 0
  %i.il = extractelement <2 x double> %i.ie, i64 1
  %i.im = fmul double %i.hs, %i.il
  %i.in = fmul double %i.id, %i.im                ; 2 uses
  %i.io = fmul double %i.hr, %i.ik                ; 2 uses
  %i.ip = fadd double %i.io, %i.in
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !3533
  %i.iq = extractelement <2 x double> %i.hw, i64 0
  %i.ir = extractelement <2 x double> %i.ij, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store double 1.000000e+00, ptr %11, align 8, !tbaa !335
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !3535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !3536
  call void @_ZNK7openvdb5v13_04math4Vec3IdE4unitEdRd(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %11, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !3535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !3536
  %i.is = call double @cos(double noundef %.7180.sink.i) #24, !noalias !3535 ; 3 uses
  %i.it = call double @sin(double noundef %.7180.sink.i) #24, !noalias !3535 ; 2 uses
  %i.iu = load <2 x double>, ptr %4, align 16, !tbaa !335, !noalias !3535 ; 6 uses
  %i.iv = fmul <2 x double> %i.iu, %i.iu
  %i.iw = insertelement <2 x double> poison, double %i.is, i64 0
  %i.ix = shufflevector <2 x double> %i.iw, <2 x double> poison, <2 x i32> zeroinitializer
  %12 = load double, ptr %i.de, align 16, !tbaa !335, !noalias !3535 ; 5 uses
  %13 = fmul double %12, %12
  %14 = extractelement <2 x double> %i.iu, i64 1
  %i.iy = fmul double %14, %12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !3535
  %15 = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer
  %16 = shufflevector <2 x double> %i.ij, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %17 = insertelement <2 x double> %16, double %i.ip, i64 1 ; 3 uses
  %18 = fsub double 1.000000e+00, %i.is           ; 3 uses
  %19 = insertelement <2 x double> poison, double %18, i64 0
  %i.iz = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %20 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iv, <2 x double> %i.iz, <2 x double> %i.ix) ; 3 uses
  %21 = call double @llvm.fmuladd.f64(double %13, double %18, double %i.is) ; 3 uses
  %i.ja = shufflevector <2 x double> %i.iu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jb = insertelement <2 x double> %i.iu, double %12, i64 0
  %i.jc = fmul <2 x double> %i.ja, %i.jb
  %i.jd = fmul <2 x double> %i.iz, %i.jc          ; 3 uses
  %22 = extractelement <2 x double> %i.jd, i64 1
  %23 = extractelement <2 x double> %20, i64 0    ; 2 uses
  %i.je = extractelement <2 x double> %20, i64 1  ; 2 uses
  %i.jf = insertelement <2 x double> poison, double %i.it, i64 0
  %i.jg = shufflevector <2 x double> %i.jf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jh = fmul <2 x double> %i.jg, %i.iu          ; 3 uses
  %24 = shufflevector <2 x double> %i.jh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %25 = extractelement <2 x double> %i.jh, i64 0
  %26 = shufflevector <2 x double> %i.jd, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ji = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.jj = fsub double %i.hy, %i.hp                ; 2 uses
  %i.jk = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jl = insertelement <2 x double> %i.jk, double %i.hs, i64 1
  %i.jm = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jn = fmul <2 x double> %i.jl, %i.jm
  %i.jo = fmul <2 x double> %i.ig, %i.jn          ; 4 uses
  %i.jp = insertelement <2 x double> poison, double %i.hr, i64 0
  %i.jq = shufflevector <2 x double> %i.jp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jr = insertelement <2 x double> %i.ie, double %i.hs, i64 0
  %i.js = fmul <2 x double> %i.jq, %i.jr          ; 4 uses
  %i.jt = fsub double %i.in, %i.io
  %i.ju = fadd <2 x double> %i.jo, %i.js
  %i.jv = fsub <2 x double> %i.jo, %i.js
  %i.jw = shufflevector <2 x double> %i.ju, <2 x double> %i.jv, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.jx = insertelement <2 x double> %i.ic, double %i.jt, i64 0 ; 3 uses
  %i.jy = fmul <2 x double> %i.ji, %i.jw
  %i.jz = insertelement <2 x double> poison, double %i.jj, i64 0
  %i.ka = shufflevector <2 x double> %i.jz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kb = fmul <2 x double> %i.ka, %i.jw
  %i.kc = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kd = fmul double %i.hm, %i.hn
  %i.ke = fmul double %i.hg, %i.hl                ; 2 uses
  %i.kf = fmul double %i.hm, %i.hl
  %i.kg = fmul double %i.hg, %i.hn                ; 2 uses
  %i.kh = fmul double %i.hx, %i.kd                ; 2 uses
  %i.ki = fmul double %i.hx, %i.kf                ; 2 uses
  %i.kj = fadd double %i.kh, %i.ke                ; 2 uses
  %27 = fmul double %i.kj, %i.ir
  %i.kk = fsub double %i.ki, %i.kg                ; 2 uses
  %28 = insertelement <2 x double> poison, double %i.kj, i64 0
  %29 = shufflevector <2 x double> %28, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kl = insertelement <2 x double> poison, double %i.kk, i64 0
  %i.km = shufflevector <2 x double> %i.kl, <2 x double> poison, <2 x i32> zeroinitializer
  %30 = fmul double %i.it, %12                    ; 2 uses
  %31 = fsub double %22, %30                      ; 3 uses
  %i.kn = fmul double %18, %i.iy                  ; 2 uses
  %32 = insertelement <2 x double> %24, double %30, i64 1
  %33 = fadd <2 x double> %i.jd, %32              ; 3 uses
  %i.ko = fadd double %25, %i.kn                  ; 3 uses
  %i.kp = insertelement <2 x double> %26, double %i.kn, i64 0
  %i.kq = fsub <2 x double> %i.kp, %i.jh          ; 3 uses
  %34 = fsub double %i.kh, %i.ke
  %35 = fadd double %i.hp, %i.hy                  ; 2 uses
  %i.kr = insertelement <2 x double> poison, double %34, i64 0 ; 2 uses
  %i.ks = shufflevector <2 x double> %i.kr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kt = insertelement <2 x double> poison, double %35, i64 0
  %i.ku = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kv = fadd double %i.kg, %i.ki                ; 2 uses
  %i.kw = insertelement <2 x double> %i.ji, double %i.jj, i64 1
  %i.kx = shufflevector <2 x double> %i.ij, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ky = fmul <2 x double> %i.kw, %i.kx
  %foldExtExtBinop315 = fadd <2 x double> %i.jo, %i.js ; 2 uses
  %i.kz = extractelement <2 x double> %foldExtExtBinop315, i64 1
  %foldExtExtBinop317 = fsub <2 x double> %i.jo, %i.js ; 2 uses
  %i.la = extractelement <2 x double> %foldExtExtBinop317, i64 0
  %i.lb = call double @llvm.fmuladd.f64(double %i.iq, double %i.kz, double %27)
  %i.lc = call double @llvm.fmuladd.f64(double %i.kk, double %i.la, double %i.lb) ; 3 uses
  %i.ld = fmul <2 x double> %29, %i.jw
  %i.le = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %i.jx, <2 x double> %i.ld)
  %i.lf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.km, <2 x double> %17, <2 x double> %i.le) ; 4 uses
  %i.lg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ks, <2 x double> %i.jx, <2 x double> %i.jy)
  %i.lh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ku, <2 x double> %17, <2 x double> %i.lg) ; 4 uses
  %i.li = insertelement <2 x double> %i.kr, double %i.kv, i64 1
  %i.lj = shufflevector <2 x double> %foldExtExtBinop315, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.lk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.li, <2 x double> %i.lj, <2 x double> %i.ky)
  %i.ll = insertelement <2 x double> %i.kc, double %35, i64 0
  %i.lm = shufflevector <2 x double> %foldExtExtBinop317, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ln = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ll, <2 x double> %i.lm, <2 x double> %i.lk) ; 4 uses
  %i.lo = insertelement <2 x double> poison, double %i.kv, i64 0
  %i.lp = shufflevector <2 x double> %i.lo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lp, <2 x double> %i.jx, <2 x double> %i.kb)
  %i.lr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kc, <2 x double> %17, <2 x double> %i.lq) ; 4 uses
  %i.ls = fmul double %i.lc, %31
  %i.lt = extractelement <2 x double> %i.lf, i64 1
  %i.lu = call double @llvm.fmuladd.f64(double %i.lt, double %23, double %i.ls)
  %i.lv = fmul double %i.lc, %i.je
  %i.lw = insertelement <2 x double> poison, double %i.lu, i64 0
  %i.lx = insertelement <2 x double> %i.lw, double %i.lv, i64 1
  %i.ly = extractelement <2 x double> %i.lf, i64 0
  %i.lz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lf, <2 x double> %33, <2 x double> %i.lx) ; 2 uses
  %i.ma = fmul double %i.lc, %i.ko
  %i.mb = shufflevector <2 x double> %i.lz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.mc = insertelement <2 x double> %i.mb, double %i.ma, i64 1
  %i.md = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lf, <2 x double> %i.kq, <2 x double> %i.mc) ; 2 uses
  %i.me = extractelement <2 x double> %i.md, i64 1
  %i.mf = call double @llvm.fmuladd.f64(double %i.ly, double %21, double %i.me) ; 3 uses
  %i.mg = extractelement <2 x double> %i.ln, i64 0 ; 2 uses
  %i.mh = fmul double %i.mg, %31
  %i.mi = extractelement <2 x double> %i.lh, i64 1
  %i.mj = call double @llvm.fmuladd.f64(double %i.mi, double %23, double %i.mh)
  %i.mk = fmul double %i.mg, %i.je
  %i.ml = insertelement <2 x double> poison, double %i.mj, i64 0
  %i.mm = insertelement <2 x double> %i.ml, double %i.mk, i64 1
  %i.mn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lh, <2 x double> %33, <2 x double> %i.mm) ; 3 uses
  %i.mo = extractelement <2 x double> %i.lh, i64 0
  %i.mp = shufflevector <2 x double> %i.mn, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.mq = insertelement <2 x double> poison, double %i.ko, i64 0
  %i.mr = insertelement <2 x double> %i.mq, double %31, i64 1
  %i.ms = fmul <2 x double> %i.ln, %i.mr          ; 2 uses
  %i.mt = shufflevector <2 x double> %i.mn, <2 x double> %i.ms, <2 x i32> <i32 1, i32 2>
  %i.mu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lh, <2 x double> %i.kq, <2 x double> %i.mt) ; 2 uses
  %i.mv = extractelement <2 x double> %i.mu, i64 1
  %i.mw = call double @llvm.fmuladd.f64(double %i.mo, double %21, double %i.mv) ; 3 uses
  %i.mx = shufflevector <2 x double> %i.lr, <2 x double> %i.ln, <2 x i32> <i32 1, i32 3>
  %i.my = shufflevector <2 x double> <double poison, double -0.000000e+00>, <2 x double> %i.ms, <2 x i32> <i32 3, i32 1>
  %i.mz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mx, <2 x double> %20, <2 x double> %i.my)
  %i.na = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lr, <2 x double> %33, <2 x double> %i.mz) ; 2 uses
  %i.nb = extractelement <2 x double> %i.lr, i64 0
  %i.nc = extractelement <2 x double> %i.ln, i64 1
  %i.nd = fmul double %i.nc, %i.ko
  %i.ne = shufflevector <2 x double> %i.na, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.nf = insertelement <2 x double> %i.ne, double %i.nd, i64 1
  %i.ng = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lr, <2 x double> %i.kq, <2 x double> %i.nf) ; 2 uses
  %i.nh = extractelement <2 x double> %i.ng, i64 1
  %i.ni = call double @llvm.fmuladd.f64(double %i.nb, double %21, double %i.nh) ; 3 uses
  %i.nj = extractelement <2 x double> %i.md, i64 0 ; 2 uses
  %i.nk = fmul double %i.nj, 0.000000e+00         ; 2 uses
  %i.nl = extractelement <2 x double> %i.lz, i64 0 ; 3 uses
  %i.nm = call double @llvm.fmuladd.f64(double %i.nl, double %i.ec, double %i.nk)
  %i.nn = call double @llvm.fmuladd.f64(double %i.mf, double 0.000000e+00, double %i.nm)
  %i.no = call double @llvm.fmuladd.f64(double %i.nl, double 0.000000e+00, double %i.nk)
  %i.np = extractelement <2 x double> %i.mu, i64 0 ; 2 uses
  %i.nq = fmul double %i.np, 0.000000e+00         ; 2 uses
  %i.nr = extractelement <2 x double> %i.mn, i64 0 ; 2 uses
  %i.ns = insertelement <2 x double> %i.mp, double %i.mf, i64 0
  %i.nt = insertelement <2 x double> poison, double %i.no, i64 0
  %i.nu = insertelement <2 x double> %i.nt, double %i.nq, i64 1
  %i.nv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ns, <2 x double> %i.eb, <2 x double> %i.nu) ; 2 uses
  %i.nw = extractelement <2 x double> %i.nv, i64 1
  %i.nx = call double @llvm.fmuladd.f64(double %i.mw, double 0.000000e+00, double %i.nw)
  %i.ny = fmul double %i.dw, %i.np
  %i.nz = call double @llvm.fmuladd.f64(double %i.nr, double 0.000000e+00, double %i.ny)
  %i.oa = call double @llvm.fmuladd.f64(double %i.mw, double 0.000000e+00, double %i.nz)
  %i.ob = call double @llvm.fmuladd.f64(double %i.nr, double 0.000000e+00, double %i.nq)
  %i.oc = call double @llvm.fmuladd.f64(double %i.mw, double %i.ed, double %i.ob)
  %i.od = extractelement <2 x double> %i.ng, i64 0 ; 2 uses
  %i.oe = fmul double %i.od, 0.000000e+00         ; 2 uses
  %i.of = extractelement <2 x double> %i.na, i64 0 ; 3 uses
  %i.og = call double @llvm.fmuladd.f64(double %i.of, double %i.ec, double %i.oe)
  %i.oh = call double @llvm.fmuladd.f64(double %i.ni, double 0.000000e+00, double %i.og)
  %i.oi = fmul double %i.dw, %i.od
  %i.oj = call double @llvm.fmuladd.f64(double %i.of, double 0.000000e+00, double %i.oi)
  %i.ok = call double @llvm.fmuladd.f64(double %i.ni, double 0.000000e+00, double %i.oj)
  %i.ol = call double @llvm.fmuladd.f64(double %i.of, double 0.000000e+00, double %i.oe)
  %i.om = call double @llvm.fmuladd.f64(double %i.ni, double %i.ed, double %i.ol)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.on = fsub double %i.ac, %i.nn
  %i.oo = call noundef double @llvm.fabs.f64(double %i.on)
  %i.op = fcmp ule double %i.oo, 1.000000e-08
  br i1 %i.op, label %bb.j, label %.thread285

bb.j:                                             ; preds = %_ZN7openvdb5v13_04math11eulerAnglesINS1_4Mat3IdEEEENS1_4Vec3INT_10value_typeEEERKS6_NS1_13RotationOrderES7_.exit
  %i.oq = fmul double %i.dw, %i.nj
  %i.or = call double @llvm.fmuladd.f64(double %i.nl, double 0.000000e+00, double %i.oq)
  %i.os = call double @llvm.fmuladd.f64(double %i.mf, double 0.000000e+00, double %i.or)
  %i.ot = fsub double %i.dn, %i.os
  %i.ou = call noundef double @llvm.fabs.f64(double %i.ot)
  %i.ov = fcmp ule double %i.ou, 1.000000e-08
  %i.ow = extractelement <2 x double> %i.nv, i64 0
  %i.ox = fsub double %.sroa.13242.0.copyload, %i.ow
  %i.oy = call double @llvm.fabs.f64(double %i.ox)
  %i.oz = fcmp ule double %i.oy, 1.000000e-08
  %or.cond322 = select i1 %i.ov, i1 %i.oz, i1 false
  br i1 %or.cond322, label %bb.k, label %.thread285

bb.k:                                             ; preds = %bb.j
  %i.pa = fsub double %i.ad, %i.nx
  %i.pb = call noundef double @llvm.fabs.f64(double %i.pa)
  %i.pc = fcmp ule double %i.pb, 1.000000e-08
  br i1 %i.pc, label %bb.l, label %.thread285

bb.l:                                             ; preds = %bb.k
  %i.pd = fsub double %i.do, %i.oa
  %i.pe = call noundef double @llvm.fabs.f64(double %i.pd)
  %i.pf = fcmp ule double %i.pe, 1.000000e-08
  br i1 %i.pf, label %bb.m, label %.thread285

bb.m:                                             ; preds = %bb.l
  %i.pg = fsub double %.sroa.29.24.copyload, %i.oc
  %i.ph = call noundef double @llvm.fabs.f64(double %i.pg)
  %i.pi = fcmp ule double %i.ph, 1.000000e-08
  br i1 %i.pi, label %bb.n, label %.thread285

bb.n:                                             ; preds = %bb.m
  %i.pj = fsub double %i.af, %i.oh
  %i.pk = call noundef double @llvm.fabs.f64(double %i.pj)
  %i.pl = fcmp ule double %i.pk, 1.000000e-08
  br i1 %i.pl, label %bb.o, label %.thread285

bb.o:                                             ; preds = %bb.n
  %i.pm = fsub double %i.aj, %i.ok
  %i.pn = call noundef double @llvm.fabs.f64(double %i.pm)
  %i.po = fcmp ule double %i.pn, 1.000000e-08
  br i1 %i.po, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit, label %.thread285

_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit:   ; preds = %bb.o
  %i.pp = fsub double %.sroa.45.48.copyload, %i.om
  %i.pq = call noundef double @llvm.fabs.f64(double %i.pp)
  %i.pr = fcmp ule double %i.pq, 1.000000e-08
  br i1 %i.pr, label %bb.p, label %.thread285

bb.p:                                             ; preds = %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit
  %i.ps = call noundef double @llvm.fabs.f64(double %.7180.sink.i) ; 2 uses
  %i.pt = call noundef double @llvm.fabs.f64(double %.7.sink.i) ; 2 uses
  %i.pu = call noundef double @llvm.fabs.f64(double %.7172.sink.i) ; 2 uses
  %i.pv = fcmp olt double %i.pt, %i.pu
  %i.pw = select i1 %i.pv, double %i.pu, double %i.pt ; 2 uses
  %i.px = fcmp olt double %i.ps, %i.pw
  %.sroa.speculated = select i1 %i.px, double %i.pw, double %i.ps ; 2 uses
  %i.py = fcmp olt double %.027305, %.sroa.speculated
  br i1 %i.py, label %.thread285, label %bb.q

bb.q:                                             ; preds = %bb.p
  store double %.7180.sink.i, ptr %2, align 8
  store double %.7.sink.i, ptr %.sroa.6178.0..sroa_idx, align 8
  store double %.7172.sink.i, ptr %.sroa.9180.0..sroa_idx, align 8
  store double %i.ec, ptr %1, align 8
  store double %i.dw, ptr %.sroa.6199.0..sroa_idx, align 8
  store double %i.ed, ptr %.sroa.9201.0..sroa_idx, align 8
  %i.pz = load double, ptr %2, align 8, !tbaa !335 ; 3 uses
  %i.qa = call noundef double @llvm.fabs.f64(double %i.pz)
  %i.qb = fcmp ogt double %i.qa, f0x3E7AD7F29ABCAF48
  br i1 %i.qb, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i127, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i122

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i127: ; preds = %bb.q
  %i.qc = fdiv double %i.pz, %i.pz
  %i.qd = call noundef double @llvm.fabs.f64(double %i.qc)
  %i.qe = fcmp ugt double %i.qd, f0x3E7AD7F29ABCAF48
  br i1 %i.qe, label %bb.s, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i122

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i122: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i127, %bb.q
  %i.qf = load double, ptr %.sroa.6178.0..sroa_idx, align 8, !tbaa !335 ; 3 uses
  %i.qg = call noundef double @llvm.fabs.f64(double %i.qf)
  %i.qh = fcmp ogt double %i.qg, f0x3E7AD7F29ABCAF48
  br i1 %i.qh, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i125, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i123

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i125: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i122
  %i.qi = fdiv double %i.qf, %i.qf
  %i.qj = call noundef double @llvm.fabs.f64(double %i.qi)
  %i.qk = fcmp ugt double %i.qj, f0x3E7AD7F29ABCAF48
  br i1 %i.qk, label %bb.s, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i123

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i123: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i125, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i122
  %i.ql = load double, ptr %.sroa.9180.0..sroa_idx, align 8, !tbaa !335 ; 3 uses
  %i.qm = call noundef double @llvm.fabs.f64(double %i.ql)
  %i.qn = fcmp ogt double %i.qm, f0x3E7AD7F29ABCAF48
  br i1 %i.qn, label %bb.r, label %.thread293.thread

bb.r:                                             ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i123
  %i.qo = fdiv double %i.ql, %i.ql
  %i.qp = call noundef double @llvm.fabs.f64(double %i.qo)
  %i.qq = fcmp ole double %i.qp, f0x3E7AD7F29ABCAF48
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i125, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i127
  %i.qr = phi i1 [ false, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i125 ], [ false, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i127 ], [ %i.qq, %bb.r ] ; 3 uses
  %i.qs = xor i1 %i.qr, true
  %or.cond.not = or i1 %i.cm, %i.qr
  br i1 %or.cond.not, label %.thread293.thread, label %.thread285

.thread285:                                       ; preds = %bb.s, %bb.p, %_ZN7openvdb5v13_04math11eulerAnglesINS1_4Mat3IdEEEENS1_4Vec3INT_10value_typeEEERKS6_NS1_13RotationOrderES7_.exit, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit, %bb.d
  %.5292 = phi double [ %.sroa.speculated, %bb.s ], [ %.027305, %bb.j ], [ %.027305, %bb.p ], [ %.027305, %_ZN7openvdb5v13_04math11eulerAnglesINS1_4Mat3IdEEEENS1_4Vec3INT_10value_typeEEERKS6_NS1_13RotationOrderES7_.exit ], [ %.027305, %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit ], [ %.027305, %bb.d ], [ %.027305, %bb.o ], [ %.027305, %bb.n ], [ %.027305, %bb.m ], [ %.027305, %bb.l ], [ %.027305, %bb.k ]
  %.535291 = phi i1 [ true, %bb.s ], [ %.030304, %bb.j ], [ %.030304, %bb.p ], [ %.030304, %_ZN7openvdb5v13_04math11eulerAnglesINS1_4Mat3IdEEEENS1_4Vec3INT_10value_typeEEERKS6_NS1_13RotationOrderES7_.exit ], [ %.030304, %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit ], [ %.030304, %bb.d ], [ %.030304, %bb.o ], [ %.030304, %bb.n ], [ %.030304, %bb.m ], [ %.030304, %bb.l ], [ %.030304, %bb.k ] ; 2 uses
  %.541290 = phi i1 [ %i.qs, %bb.s ], [ %.036303, %bb.j ], [ %.036303, %bb.p ], [ %.036303, %_ZN7openvdb5v13_04math11eulerAnglesINS1_4Mat3IdEEEENS1_4Vec3INT_10value_typeEEERKS6_NS1_13RotationOrderES7_.exit ], [ %.036303, %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit ], [ %.036303, %bb.d ], [ %.036303, %bb.o ], [ %.036303, %bb.n ], [ %.036303, %bb.m ], [ %.036303, %bb.l ], [ %.036303, %bb.k ] ; 2 uses
  %i.qt = add nuw nsw i64 %.026306, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.qt, 8
  br i1 %exitcond.not, label %.thread293, label %bb.d, !llvm.loop !3525

.thread293.thread:                                ; preds = %bb.s, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i123
  %.not2309 = phi i1 [ true, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i123 ], [ %i.qr, %bb.s ]
  %or.cond4310 = or i1 %i.cm, %.not2309
  %.311 = select i1 %or.cond4310, i32 2, i32 1
  br label %_ZN7openvdb5v13_04math8isAffineIdEEbRKNS1_4Mat4IT_EE.exit.thread

.thread293:                                       ; preds = %.thread285
  %.not2 = xor i1 %.541290, true
  %or.cond4 = or i1 %i.cm, %.not2
  %. = select i1 %or.cond4, i32 2, i32 1
  %spec.select = select i1 %.535291, i32 %., i32 0
  br label %_ZN7openvdb5v13_04math8isAffineIdEEbRKNS1_4Mat4IT_EE.exit.thread

_ZN7openvdb5v13_04math8isAffineIdEEbRKNS1_4Mat4IT_EE.exit.thread: ; preds = %.thread293, %.thread293.thread, %bb.a
  %.144 = phi i32 [ 0, %bb.a ], [ %spec.select, %.thread293 ], [ %.311, %.thread293.thread ]
  ret i32 %.144
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools15GridTransformer4initERKNS0_4math4Vec3IdEES7_S7_S7_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %22 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 5 uses
  %23 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 5 uses
  %24 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 5 uses
  %25 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 5 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
end_hunk_0
