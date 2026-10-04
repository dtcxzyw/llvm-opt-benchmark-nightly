Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/homography_decomp?download=true
inline.NumInlined: 716
inline.NumDeleted: 260
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN2cv23HomographyDecomposition21HomographyDecompZhang22findMotionFrom_tstar_nERKNS_3VecIdLi3EEES5_RNS0_13_CameraMotionE:bb.a
  %i.bq = shufflevector <2 x double> %i.aa, <2 x double> %i.al, <2 x i32> <i32 0, i32 3>
  %i.br = fmul <2 x double> %i.bq, %i.bm
  %i.bs = shufflevector <2 x double> %i.ad, <2 x double> %i.aa, <2 x i32> <i32 0, i32 2>
  %i.bt = shufflevector <2 x double> %i.ar, <2 x double> %i.aa, <2 x i32> <i32 0, i32 3>
  %i.bu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> %i.bt, <2 x double> %i.br)
  %i.bv = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bx = fmul <2 x double> %i.bu, %i.bw
  %i.by = insertelement <2 x double> %i.bm, double %i.bb, i64 1
  %i.bz = fmul <2 x double> %i.w, %i.by
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cb = shufflevector <2 x double> %i.ad, <2 x double> %i.aa, <2 x i32> <i32 0, i32 3>
  %i.cc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.cb, <2 x double> %i.ca)
  %i.cd = fmul <2 x double> %i.cc, %i.bw
  %i.ce = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cf = insertelement <2 x double> %i.ce, double %i.af, i64 1 ; 2 uses
  %i.cg = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ch = insertelement <2 x double> %i.cg, double %i.ai, i64 1
  %i.ci = fmul <2 x double> %i.cf, %i.ch
  %i.cj = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ck = shufflevector <2 x double> %i.ao, <2 x double> %i.aa, <2 x i32> <i32 1, i32 2>
  %i.cl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.ck, <2 x double> %i.ci)
  %i.cm = fmul <2 x double> %i.cl, %i.bw
  %i.cn = insertelement <2 x double> %i.w, double %i.af, i64 1 ; 2 uses
  %i.co = fmul <2 x double> %i.cn, %i.bi
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cq = shufflevector <2 x double> %i.ar, <2 x double> %i.al, <2 x i32> <i32 0, i32 3>
  %i.cr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.cq, <2 x double> %i.cp)
  %i.cs = fmul <2 x double> %i.cr, %i.bw
  br label %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit

_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit:             ; preds = %bb.e, %bb.f
  %.sroa.016.0 = phi double [ %i.bp, %bb.f ], [ 0.000000e+00, %bb.e ] ; 2 uses
  %i.ct = phi <2 x double> [ %i.cs, %bb.f ], [ zeroinitializer, %bb.e ] ; 3 uses
  %i.cu = phi <2 x double> [ %i.cm, %bb.f ], [ zeroinitializer, %bb.e ] ; 3 uses
  %i.cv = phi <2 x double> [ %i.cd, %bb.f ], [ zeroinitializer, %bb.e ] ; 3 uses
  %i.cw = phi <2 x double> [ %i.bx, %bb.f ], [ zeroinitializer, %bb.e ] ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cy = load <4 x double>, ptr %i.ag, align 8, !tbaa !11, !noalias !91 ; 3 uses
  %i.cz = shufflevector <4 x double> %i.cy, <4 x double> poison, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.da = insertelement <2 x double> poison, double %.sroa.016.0, i64 0
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cz, <2 x double> %i.db, <2 x double> zeroinitializer)
  %i.dd = load <2 x double>, ptr %i.cx, align 8, !tbaa !11, !noalias !91
  %i.de = shufflevector <2 x double> %i.dd, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.df = shufflevector <4 x double> %i.cy, <4 x double> %i.de, <2 x i32> <i32 1, i32 4> ; 3 uses
  %i.dg = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.dg, <2 x double> %i.dc)
  %i.di = shufflevector <4 x double> %i.cy, <4 x double> %i.de, <2 x i32> <i32 2, i32 5> ; 3 uses
  %i.dj = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.di, <2 x double> %i.dj, <2 x double> %i.dh) ; 4 uses
  %i.dl = extractelement <2 x double> %i.dk, i64 1 ; 4 uses
  %i.dm = extractelement <2 x double> %i.dk, i64 0 ; 3 uses
  %i.dn = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.do = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cz, <2 x double> %i.dn, <2 x double> zeroinitializer)
  %i.dp = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.dp, <2 x double> %i.do)
  %i.dr = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.di, <2 x double> %i.dr, <2 x double> %i.dq) ; 3 uses
  %i.dt = extractelement <2 x double> %i.ds, i64 1 ; 4 uses
  %i.du = extractelement <2 x double> %i.ds, i64 0 ; 4 uses
  %i.dv = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cz, <2 x double> %i.dv, <2 x double> zeroinitializer)
  %i.dx = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.dx, <2 x double> %i.dw)
  %i.dz = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ea = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.di, <2 x double> %i.dz, <2 x double> %i.dy) ; 3 uses
  %i.eb = extractelement <2 x double> %i.ea, i64 1 ; 3 uses
  %i.ec = extractelement <2 x double> %i.ea, i64 0 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.eg = load double, ptr %i.ed, align 8, !tbaa !11, !noalias !91 ; 2 uses
  %i.eh = call double @llvm.fmuladd.f64(double %i.eg, double %.sroa.016.0, double 0.000000e+00)
  %i.ei = load double, ptr %i.ee, align 8, !tbaa !11, !noalias !91 ; 2 uses
  %i.ej = extractelement <2 x double> %i.cw, i64 0
  %i.ek = call double @llvm.fmuladd.f64(double %i.ei, double %i.ej, double %i.eh)
  %i.el = load double, ptr %i.ef, align 8, !tbaa !11, !noalias !91 ; 2 uses
  %i.em = extractelement <2 x double> %i.cw, i64 1
  %i.en = call double @llvm.fmuladd.f64(double %i.el, double %i.em, double %i.ek) ; 5 uses
  %i.eo = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.ep = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ep, <2 x double> %i.cv, <2 x double> zeroinitializer)
  %i.er = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.es = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.et = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.et, <2 x double> %i.cu, <2 x double> %i.er)
  %i.ev = insertelement <2 x double> poison, double %i.el, i64 0
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ex = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.ct, <2 x double> %i.eu) ; 4 uses
  store double %i.dm, ptr %3, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store double %i.du, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store double %i.ec, ptr %.sroa.520.0..sroa_idx, align 8
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store double %i.dl, ptr %.sroa.621.0..sroa_idx, align 8
  %.sroa.722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store double %i.dt, ptr %.sroa.722.0..sroa_idx, align 8
  %.sroa.823.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store double %i.eb, ptr %.sroa.823.0..sroa_idx, align 8
  %.sroa.924.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store double %i.en, ptr %.sroa.924.0..sroa_idx, align 8
  %.sroa.1025.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.ey = extractelement <2 x double> %i.ex, i64 0 ; 3 uses
  store double %i.ey, ptr %.sroa.1025.0..sroa_idx, align 8
  %.sroa.1126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ez = extractelement <2 x double> %i.ex, i64 1 ; 3 uses
  store double %i.ez, ptr %.sroa.1126.0..sroa_idx, align 8, !tbaa !31
  %i.fa = fneg double %i.eb                       ; 5 uses
  %i.fb = fmul double %i.ey, %i.fa
  %i.fc = call double @llvm.fmuladd.f64(double %i.dt, double %i.ez, double %i.fb)
  %i.fd = fmul double %i.en, %i.fa
  %i.fe = call double @llvm.fmuladd.f64(double %i.dl, double %i.ez, double %i.fd)
  %i.ff = fneg double %i.fe
  %i.fg = fmul double %i.du, %i.ff
  %i.fh = call double @llvm.fmuladd.f64(double %i.dm, double %i.fc, double %i.fg)
  %i.fi = fneg double %i.dt                       ; 4 uses
  %i.fj = fmul double %i.en, %i.fi
  %i.fk = call double @llvm.fmuladd.f64(double %i.dl, double %i.ey, double %i.fj)
  %i.fl = call noundef double @llvm.fmuladd.f64(double %i.ec, double %i.fk, double %i.fh)
  %i.fm = fcmp olt double %i.fl, 0.000000e+00
  br i1 %i.fm, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit
  %i.fn = fneg <2 x double> %i.dk                 ; 3 uses
  %i.fo = extractelement <2 x double> %i.fn, i64 1 ; 2 uses
  %i.fp = extractelement <2 x double> %i.fn, i64 0 ; 2 uses
  store double %i.fp, ptr %3, align 8, !tbaa !11
  %i.fq = fneg double %i.du                       ; 3 uses
  store double %i.fq, ptr %.sroa.419.0..sroa_idx, align 8, !tbaa !11
  %i.fr = fneg double %i.ec                       ; 3 uses
  store double %i.fr, ptr %.sroa.520.0..sroa_idx, align 8, !tbaa !11
  store double %i.fo, ptr %.sroa.621.0..sroa_idx, align 8, !tbaa !11
  store double %i.fi, ptr %.sroa.722.0..sroa_idx, align 8, !tbaa !11
  store double %i.fa, ptr %.sroa.823.0..sroa_idx, align 8, !tbaa !11
  %i.fs = fneg double %i.en                       ; 2 uses
  store double %i.fs, ptr %.sroa.924.0..sroa_idx, align 8, !tbaa !11
  %i.ft = fneg <2 x double> %i.ex                 ; 2 uses
  store <2 x double> %i.ft, ptr %.sroa.1025.0..sroa_idx, align 8, !tbaa !11
  %i.fu = insertelement <2 x double> poison, double %i.fr, i64 0
  %i.fv = insertelement <2 x double> %i.fu, double %i.fa, i64 1
  %i.fw = insertelement <2 x double> poison, double %i.fq, i64 0
  %i.fx = insertelement <2 x double> %i.fw, double %i.fi, i64 1
  br label %bb.j

bb.h:                                             ; preds = %_ZN2cv3MatC2IdLi3EEERKNS_3VecIT_XT0_EEEb.exit
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.k

bb.i:                                             ; preds = %_ZN2cv3MatC2IdLi3EEERKNS_3VecIT_XT0_EEEb.exit15
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.k

bb.j:                                             ; preds = %bb.g, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit
  %i.ga = phi double [ %i.fs, %bb.g ], [ %i.en, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit ] ; 2 uses
  %i.gb = phi double [ %i.fa, %bb.g ], [ %i.eb, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit ]
  %i.gc = phi double [ %i.fi, %bb.g ], [ %i.dt, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit ]
  %i.gd = phi double [ %i.fo, %bb.g ], [ %i.dl, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit ]
  %i.ge = phi double [ %i.fr, %bb.g ], [ %i.ec, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit ]
  %i.gf = phi double [ %i.fq, %bb.g ], [ %i.du, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit ]
  %i.gg = phi double [ %i.fp, %bb.g ], [ %i.dm, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit ]
  %i.gh = phi <2 x double> [ %i.fv, %bb.g ], [ %i.ea, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit ]
  %i.gi = phi <2 x double> [ %i.fx, %bb.g ], [ %i.ds, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit ]
  %i.gj = phi <2 x double> [ %i.fn, %bb.g ], [ %i.dk, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit ]
  %i.gk = phi <2 x double> [ %i.ft, %bb.g ], [ %i.ex, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.go = load double, ptr %1, align 8, !tbaa !11, !noalias !92 ; 2 uses
  %i.gp = load double, ptr %i.gl, align 8, !tbaa !11, !noalias !92 ; 2 uses
  %i.gq = load double, ptr %i.gm, align 8, !tbaa !11, !noalias !92 ; 2 uses
  %i.gr = insertelement <2 x double> poison, double %i.go, i64 0
  %i.gs = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gj, <2 x double> %i.gs, <2 x double> zeroinitializer)
  %i.gu = insertelement <2 x double> poison, double %i.gp, i64 0
  %i.gv = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gi, <2 x double> %i.gv, <2 x double> %i.gt)
  %i.gx = insertelement <2 x double> poison, double %i.gq, i64 0
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gh, <2 x double> %i.gy, <2 x double> %i.gw) ; 3 uses
  %i.ha = call double @llvm.fmuladd.f64(double %i.ga, double %i.go, double 0.000000e+00)
  %i.hb = extractelement <2 x double> %i.gk, i64 0 ; 2 uses
  %i.hc = call double @llvm.fmuladd.f64(double %i.hb, double %i.gp, double %i.ha)
  %i.hd = extractelement <2 x double> %i.gk, i64 1 ; 2 uses
  %i.he = call double @llvm.fmuladd.f64(double %i.hd, double %i.gq, double %i.hc) ; 2 uses
  store <2 x double> %i.gz, ptr %i.gn, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 112
  store double %i.he, ptr %.sroa.5.0..sroa_idx, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hf, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.sroa.5.0.copyload.i = load double, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !31 ; 3 uses
  %i.hg = load <2 x double>, ptr %i.hf, align 8   ; 3 uses
  %i.hh = extractelement <2 x double> %i.hg, i64 0 ; 2 uses
  %i.hi = call double @llvm.fmuladd.f64(double %i.hh, double %i.gg, double 0.000000e+00)
  %i.hj = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.hk = insertelement <2 x double> %i.hj, double %i.gf, i64 1
  %i.hl = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.hi, i64 1
  %i.hm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hg, <2 x double> %i.hk, <2 x double> %i.hl) ; 2 uses
  %i.hn = extractelement <2 x double> %i.hm, i64 1
  %12 = call double @llvm.fmuladd.f64(double %.sroa.5.0.copyload.i, double %i.ge, double %i.hn)
  %13 = extractelement <2 x double> %i.hm, i64 0
  %i.ho = extractelement <2 x double> %i.hg, i64 1 ; 2 uses
  %i.hp = call double @llvm.fmuladd.f64(double %i.ho, double %i.gc, double %13)
  %i.hq = call double @llvm.fmuladd.f64(double %.sroa.5.0.copyload.i, double %i.gb, double %i.hp)
  %i.hr = call double @llvm.fmuladd.f64(double %i.hh, double %i.ga, double 0.000000e+00)
  %i.hs = call double @llvm.fmuladd.f64(double %i.ho, double %i.hb, double %i.hr)
  %14 = call double @llvm.fmuladd.f64(double %.sroa.5.0.copyload.i, double %i.hd, double %i.hs)
  %i.ht = extractelement <2 x double> %i.gz, i64 0
  %i.hu = call double @llvm.fmuladd.f64(double %12, double %i.ht, double 0.000000e+00)
  %i.hv = extractelement <2 x double> %i.gz, i64 1
  %i.hw = call double @llvm.fmuladd.f64(double %i.hq, double %i.hv, double %i.hu)
  %i.hx = call double @llvm.fmuladd.f64(double %14, double %i.he, double %i.hw)
  %i.hy = fadd double %i.hx, 1.000000e+00
  %i.hz = fcmp ugt double %i.hy, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  ret i1 %i.hz

bb.k:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.fz, %bb.i ], [ %i.fy, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi1EEEv(ptr dead_on_unwind noalias writable sret(%"class.cv::Matx.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.3", align 1  ; 3 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 4 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %i.d, 3
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, 3
  %or.cond17 = select i1 %or.cond, i1 %i.h, i1 false
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.j, 1
  %or.cond20 = select i1 %or.cond17, i1 %i.k, i1 false
  br i1 %or.cond20, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.m = and i32 %i.l, 4064
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi1EEEv, ptr noundef nonnull @.str.11, i32 noundef 1314) #23
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !38     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.t = load i64, ptr %i.r, align 8, !tbaa !31
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.p, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.n

bb.h:                                             ; preds = %bb.b
  %i.v = and i32 %i.l, 16415
  %or.cond12 = icmp eq i32 %i.v, 16390
  br i1 %or.cond12, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = load double, ptr %i.b, align 8, !tbaa !11
  store double %i.w, ptr %0, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.y, ptr %i.z, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ab, ptr %i.ac, align 8, !tbaa !11
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef 3, i32 noundef 1, i32 noundef 6, ptr noundef nonnull %0, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.ae, align 8
  store i32 33619968, ptr %5, align 8, !tbaa !15
  store ptr %4, ptr %i.ad, align 8, !tbaa !16
  %i.af = load i32, ptr %4, align 8, !tbaa !27
  %i.ag = and i32 %i.af, 4095
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.ag, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.i
  ret void

bb.n:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn6.pn = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn6.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv23HomographyDecomposition21HomographyDecompZhang9decomposeERSt6vectorINS0_13_CameraMotionESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 17 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 33 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %7 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.3", align 1 ; 3 uses
  %11 = alloca %"class.cv::Vec", align 8          ; 11 uses
  %12 = alloca %"class.cv::Vec", align 8          ; 11 uses
  %13 = alloca %"class.cv::Vec", align 8          ; 11 uses
  %14 = alloca %"class.cv::Vec", align 8          ; 11 uses
  %15 = alloca %"struct.cv::HomographyDecomposition::_CameraMotion", align 8 ; 76 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 -1056833530, ptr %5, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !16
  store i64 12884901891, ptr %i.b, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.e, align 8
  store i32 33619968, ptr %6, align 8, !tbaa !15
  store ptr %2, ptr %i.d, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.g, align 8
  store i32 33619968, ptr %7, align 8, !tbaa !15
  store ptr %3, ptr %i.f, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.i, align 8
  store i32 33619968, ptr %8, align 8, !tbaa !15
  store ptr %4, ptr %i.h, align 8, !tbaa !16
  invoke void @_ZN2cv3SVD7computeERKNS_11_InputArrayERKNS_12_OutputArrayES6_S6_i(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef 0)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.j = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.j, 2
  br i1 %i.k, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %4)
end_hunk_0
