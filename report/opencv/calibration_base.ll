Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/calibration_base?download=true
inline.NumInlined: 1317
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN2cv27computeTiltProjectionMatrixIdEEvT_S1_PNS_4MatxIS1_Li3ELi3EEES4_S4_S4_:bb.a
  %i.en = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.ej, <2 x double> %i.dw)
  %i.eo = shufflevector <2 x double> %i.ej, <2 x double> %i.ad, <2 x i32> <i32 1, i32 3>
  %i.ep = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.eo, <2 x double> %i.ea)
  %i.eq = fadd <2 x double> %i.en, %i.dg
  %i.er = fadd <2 x double> %i.ep, %i.ef
  store <2 x double> %i.eq, ptr %3, align 8
  store <2 x double> %i.er, ptr %.sroa.7130.0..sroa_idx, align 8
  %i.es = fadd double %i.de, 0.000000e+00
  %i.et = tail call double @llvm.fmuladd.f64(double %i.bv, double 0.000000e+00, double %i.dn) ; 2 uses
  %i.eu = fadd double %i.af, %i.et
  %i.ev = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ew = insertelement <2 x double> %i.ev, double %i.et, i64 1
  %i.ex = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> zeroinitializer, <2 x double> %i.ew)
  %i.ey = fadd double %i.eu, %i.ds
  %i.ez = tail call double @llvm.fmuladd.f64(double %i.ci, double 0.000000e+00, double %i.ec)
  %i.fa = insertelement <2 x double> poison, double %i.es, i64 0
  %i.fb = insertelement <2 x double> %i.fa, double %i.ez, i64 1
  %i.fc = fadd <2 x double> %i.ej, %i.fb
  %i.fd = fadd <2 x double> %i.ex, %i.fc
  store <2 x double> %i.fd, ptr %.sroa.9132.0..sroa_idx, align 8
  %.sroa.11134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  store double %i.ey, ptr %.sroa.11134.0..sroa_idx, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not36 = icmp eq ptr %4, null
  br i1 %.not36, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fe = fneg double %i.c                        ; 2 uses
  %i.ff = fsub double 0.000000e+00, %i.d
  %i.fg = insertelement <2 x double> poison, double %i.fe, i64 0
  %i.fh = insertelement <2 x double> %i.fg, double %i.f, i64 1
  %i.fi = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ff, i64 0
  %i.fj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fh, <2 x double> zeroinitializer, <2 x double> %i.fi) ; 3 uses
  %i.fk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> zeroinitializer, <2 x double> zeroinitializer)
  %i.fl = extractelement <2 x double> %i.fj, i64 0
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.fl, double 0.000000e+00)
  %i.fn = fadd double %i.fm, 0.000000e+00
  %i.fo = extractelement <2 x double> %i.ai, i64 0
  %i.fp = tail call double @llvm.fmuladd.f64(double %i.fo, double %.scalar, double %i.fn)
  %i.fq = extractelement <2 x double> %i.ad, i64 0
  %i.fr = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.fs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> %i.z, <2 x double> zeroinitializer)
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ft = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> zeroinitializer, <2 x double> %i.ft)
  %i.fv = insertelement <2 x double> %i.j, double %i.fe, i64 1
  %i.fw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.s, <2 x double> %i.fu) ; 3 uses
  %i.fx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> zeroinitializer, <2 x double> %i.fk) ; 4 uses
  %i.fy = extractelement <2 x double> %i.fw, i64 1 ; 2 uses
  %i.fz = fneg double %i.fy                       ; 2 uses
  %i.ga = extractelement <2 x double> %i.fx, i64 1 ; 2 uses
  %i.gb = fneg double %i.ga                       ; 2 uses
  %i.gc = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.gd = shufflevector <2 x double> %i.gc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ge = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gd, <2 x double> %i.fw, <2 x double> zeroinitializer)
  %i.gf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> zeroinitializer, <2 x double> %i.ge)
  %i.gg = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gg, <2 x double> %i.z, <2 x double> %i.gf)
  %i.gi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> zeroinitializer, <2 x double> %i.fs)
  %i.gj = insertelement <2 x double> poison, double %i.fz, i64 0
  %i.gk = shufflevector <2 x double> %i.gj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gl = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gm = insertelement <2 x double> %i.gl, double %i.ag, i64 1
  %i.gn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> %i.gm, <2 x double> %i.gi)
  %i.go = fadd <2 x double> %i.gn, %i.gh
  store <2 x double> %i.go, ptr %.sroa.471.0..sroa_idx, align 8
  %.sroa.673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.gp = shufflevector <2 x double> %i.fj, <2 x double> %i.fw, <2 x i32> <i32 0, i32 2>
  %i.gq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gp, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 3 uses
  %i.gr = extractelement <2 x double> %i.gq, i64 0
  %i.gs = shufflevector <2 x double> %i.h, <2 x double> %i.z, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.gt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gs, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 2 uses
  %i.gu = shufflevector <2 x double> %i.u, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.gv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> %i.gu, <2 x double> %i.gt)
  %i.gw = shufflevector <2 x double> %i.fx, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.gx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gd, <2 x double> %i.gw, <2 x double> %i.gq)
  %i.gy = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gy, <2 x double> %i.gs, <2 x double> %i.gx)
  %i.ha = insertelement <2 x double> poison, double %i.gb, i64 0
  %i.hb = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hb, <2 x double> %i.ad, <2 x double> %i.gv)
  %i.hd = fadd <2 x double> %i.hc, %i.gz
  store <2 x double> %i.hd, ptr %.sroa.673.0..sroa_idx, align 8
  %.sroa.875.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.he = extractelement <2 x double> %i.z, i64 1
  %i.hf = insertelement <2 x double> %i.h, double 0.000000e+00, i64 1
  %i.hg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> %i.hf, <2 x double> zeroinitializer) ; 2 uses
  %i.hh = extractelement <2 x double> %i.hg, i64 0
  %i.hi = fadd double %i.hh, 0.000000e+00
  %i.hj = tail call double @llvm.fmuladd.f64(double %i.fz, double %i.fq, double %i.hi)
  %i.hk = fadd double %i.hj, %i.fp
  store double %i.hk, ptr %4, align 8
  %i.hl = fadd double %i.gr, 0.000000e+00
  %i.hm = fadd double %.scalar, %i.hl
  %i.hn = shufflevector <2 x double> %i.z, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ho = shufflevector <4 x double> %i.hn, <4 x double> <double poison, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.hp = shufflevector <2 x double> %i.u, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 1>
  %i.hq = insertelement <4 x double> %i.hp, double 0.000000e+00, i64 1
  %i.hr = shufflevector <2 x double> %i.hg, <2 x double> %i.gt, <4 x i32> <i32 1, i32 2, i32 3, i32 1>
  %i.hs = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ho, <4 x double> %i.hq, <4 x double> %i.hr)
  %i.ht = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %i.gb, i64 0
  %i.hu = shufflevector <2 x double> %i.ad, <2 x double> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.hv = insertelement <4 x double> poison, double %i.ag, i64 0
  %i.hw = shufflevector <4 x double> %i.hv, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.hx = shufflevector <4 x double> %i.hw, <4 x double> %i.hu, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.hy = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ht, <4 x double> %i.hx, <4 x double> %i.hs)
  %i.hz = tail call double @llvm.fmuladd.f64(double %i.fy, double 0.000000e+00, double 0.000000e+00) ; 2 uses
  %i.ia = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ga, double %i.hz)
  %i.ib = extractelement <2 x double> %i.ai, i64 1
  %i.ic = tail call double @llvm.fmuladd.f64(double %i.ib, double %i.he, double %i.ia)
  %i.id = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ie = insertelement <2 x double> %i.id, double %i.hz, i64 1
  %i.if = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> zeroinitializer, <2 x double> %i.ie)
  %i.ig = fadd <2 x double> %i.z, %i.if
  %i.ih = insertelement <4 x double> poison, double %i.ic, i64 0
  %i.ii = insertelement <4 x double> %i.ih, double %i.hm, i64 1
  %i.ij = shufflevector <2 x double> %i.ig, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ik = shufflevector <4 x double> %i.ii, <4 x double> %i.ij, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.il = fadd <4 x double> %i.hy, %i.ik
  store <4 x double> %i.il, ptr %.sroa.875.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not37 = icmp eq ptr %5, null
  br i1 %.not37, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.im = fdiv double 1.000000e+00, %i.ag         ; 5 uses
  %i.in = extractelement <2 x double> %i.z, i64 1
  %i.io = fmul double %i.in, %i.im                ; 2 uses
  %i.ip = extractelement <2 x double> %i.u, i64 1 ; 2 uses
  %i.iq = fmul double %i.ip, %i.im                ; 2 uses
  %i.ir = shufflevector <2 x double> %i.h, <2 x double> %i.z, <2 x i32> <i32 0, i32 2>
  %i.is = insertelement <2 x double> poison, double %i.io, i64 0
  %i.it = shufflevector <2 x double> %i.is, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ir, <2 x double> %i.it, <2 x double> zeroinitializer)
  %i.iv = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.u, <2 x i32> <i32 0, i32 2>
  %i.iw = insertelement <2 x double> poison, double %i.iq, i64 0
  %i.ix = shufflevector <2 x double> %i.iw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iv, <2 x double> %i.ix, <2 x double> %i.iu)
  %i.iz = fadd <2 x double> %i.ad, %i.iy          ; 2 uses
  %i.ja = shufflevector <2 x double> %i.z, <2 x double> %i.h, <2 x i32> <i32 1, i32 2>
  %i.jb = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.io, i64 0
  %i.jc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ja, <2 x double> %i.jb, <2 x double> zeroinitializer) ; 2 uses
  %i.jd = extractelement <2 x double> %i.jc, i64 0
  %i.je = tail call double @llvm.fmuladd.f64(double %i.ip, double %i.iq, double %i.jd)
  %i.jf = fadd double %i.ag, %i.je
  %i.jg = insertelement <2 x double> poison, double %i.im, i64 0
  %i.jh = shufflevector <2 x double> %i.jg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ji = insertelement <2 x double> %i.jc, double 0.000000e+00, i64 0
  %i.jj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> %i.jh, <2 x double> %i.ji)
  %i.jk = fadd <2 x double> %i.jj, <double 0.000000e+00, double -0.000000e+00>
  %i.jl = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> zeroinitializer, <2 x double> %i.jk)
  store <2 x double> %i.jm, ptr %5, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.jn = extractelement <2 x double> %i.iz, i64 0
  store double %i.jn, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.jo = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jp = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.im, i64 0 ; 2 uses
  %i.jq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jo, <2 x double> %i.jp, <2 x double> zeroinitializer)
  %i.jr = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.js = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.im, i64 1 ; 2 uses
  %i.jt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jr, <2 x double> %i.js, <2 x double> %i.jq)
  %i.ju = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ju, <2 x double> zeroinitializer, <2 x double> %i.jt)
  store <2 x double> %i.jv, ptr %.sroa.640.0..sroa_idx, align 8
  %.sroa.841.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.jw = extractelement <2 x double> %i.iz, i64 1
  store double %i.jw, ptr %.sroa.841.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.jx = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jx, <2 x double> %i.jp, <2 x double> zeroinitializer)
  %i.jz = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ka = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jz, <2 x double> %i.js, <2 x double> %i.jy)
  %i.kb = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.kc = shufflevector <2 x double> %i.kb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kc, <2 x double> zeroinitializer, <2 x double> %i.ka)
  store <2 x double> %i.kd, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  store double %i.jf, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

declare void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208), i64, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN2cv11RQDecomp3x3ERKNS_11_InputArrayERKNS_12_OutputArrayES5_S5_S5_S5_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cv::Vec.1") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %8 = alloca %"class.cv::Matx.0", align 8        ; 16 uses
  %9 = alloca %"class.cv::Matx.0", align 16       ; 10 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %12 = alloca %"class.cv::Matx.0", align 8       ; 13 uses
  %13 = alloca %"class.cv::Matx.0", align 8       ; 14 uses
  %14 = alloca %"class.cv::Matx.0", align 16      ; 14 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %17 = alloca %"class.cv::Matx.0", align 8       ; 13 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator", align 1   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv11RQDecomp3x3ERKNS_11_InputArrayERKNS_12_OutputArrayES5_S5_S5_S5_E26__cv_trace_location_fn1039)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, i8 0, i64 72, i1 false), !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %9, i8 0, i64 72, i1 false), !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.a = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12, !noalias !206
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
          to label %bb.d unwind label %bb.f

bb.c:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = load i32, ptr %10, align 8, !tbaa !20
  %i.f = and i32 %i.e, 31                         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 -1040056314, ptr %11, align 8, !tbaa !50
  store ptr %8, ptr %i.g, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 12884901891, ptr %i.h, align 8, !tbaa !41
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  store double 1.000000e+00, ptr %12, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %21 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %22 = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %23 = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 4 uses
  %i.aa = load double, ptr %i.j, align 8          ; 3 uses
  %i.ab = load <2 x double>, ptr %i.x, align 8, !tbaa !31 ; 2 uses
  %i.ac = load double, ptr %i.i, align 8, !tbaa !31 ; 4 uses
  %i.ad = extractelement <2 x double> %i.ab, i64 0
  %i.ae = fadd double %i.ad, 0.000000e+00
  %i.af = call noundef double @llvm.fabs.f64(double %i.ac)
  %i.ag = fcmp ogt double %i.af, f0x3CB0000000000000 ; 2 uses
  %i.ah = select i1 %i.ag, double %i.ac, double 0.000000e+00 ; 3 uses
  %i.ai = select i1 %i.ag, double %i.aa, double 1.000000e+00 ; 3 uses
  %i.aj = fmul double %i.ah, %i.ah
  %i.ak = call double @llvm.fmuladd.f64(double %i.ai, double %i.ai, double %i.aj)
  %sqrt157 = call double @llvm.sqrt.f64(double %i.ak)
  %i.al = fdiv double 1.000000e+00, %sqrt157      ; 2 uses
  %i.am = call double @llvm.fmuladd.f64(double %i.ac, double 0.000000e+00, double %i.ae)
  %i.an = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ao = insertelement <2 x double> %i.an, double %i.aa, i64 0
  %i.ap = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.am, i64 0
  %i.aq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> zeroinitializer, <2 x double> %i.ap) ; 4 uses
  %i.ar = insertelement <2 x double> %i.aq, double 0.000000e+00, i64 1
  store <2 x double> %i.ar, ptr %i.y, align 8, !tbaa !31
  %i.as = extractelement <2 x double> %i.aq, i64 0 ; 3 uses
  %i.at = call noundef double @llvm.fabs.f64(double %i.as)
  %i.au = fcmp ogt double %i.at, f0x3CB0000000000000 ; 2 uses
  %i.av = fneg double %i.as
  %i.aw = select i1 %i.au, double %i.av, double 0.000000e+00 ; 3 uses
  %i.ax = fmul double %i.aw, %i.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 32
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.az, align 8, !tbaa !31
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.bf = load <4 x double>, ptr %8, align 8, !tbaa !31, !noalias !207 ; 3 uses
  %i.bg = load <2 x double>, ptr %i.s, align 8, !tbaa !31, !noalias !207
  %i.bh = shufflevector <4 x double> %i.bf, <4 x double> poison, <2 x i32> <i32 3, i32 0> ; 2 uses
  %i.bi = fadd <2 x double> %i.bh, zeroinitializer
  %i.bj = shufflevector <2 x double> %i.bg, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bk = shufflevector <4 x double> %i.bj, <4 x double> %i.bf, <2 x i32> <i32 0, i32 5> ; 3 uses
  %i.bl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> zeroinitializer, <2 x double> %i.bi)
  %i.bm = shufflevector <4 x double> %i.bj, <4 x double> %i.bf, <2 x i32> <i32 1, i32 6> ; 3 uses
  %i.bn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> zeroinitializer, <2 x double> %i.bl) ; 5 uses
  %i.bo = extractelement <2 x double> %i.bn, i64 1
  store double %i.bo, ptr %13, align 8, !tbaa !31, !alias.scope !207
  %i.bp = fmul double %i.ai, %i.al                ; 5 uses
  %i.bq = fmul double %i.ah, %i.al                ; 5 uses
  %i.br = fneg double %i.bq                       ; 3 uses
  store double %i.bp, ptr %i.m, align 8, !tbaa !31
  %i.bs = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.bq, i64 0
  store <2 x double> %i.bs, ptr %i.n, align 8, !tbaa !31
  store double %i.br, ptr %i.p, align 8, !tbaa !31
  store double %i.bp, ptr %i.q, align 8, !tbaa !31
  %i.bt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 2 uses
  %i.bu = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.bv, <2 x double> %i.bt)
  %i.bx = insertelement <2 x double> poison, double %i.br, i64 0
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.by, <2 x double> %i.bw) ; 5 uses
  %i.ca = extractelement <2 x double> %i.bz, i64 1
  store double %i.ca, ptr %22, align 8, !tbaa !31, !alias.scope !207
  %i.cb = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.cc, <2 x double> %i.bt)
  %i.ce = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.bv, <2 x double> %i.cd) ; 5 uses
  %i.cf = extractelement <2 x double> %i.ce, i64 1
  store double %i.cf, ptr %23, align 8, !tbaa !31, !alias.scope !207
  %i.cg = extractelement <2 x double> %i.aq, i64 1
  %i.ch = call double @llvm.fmuladd.f64(double %i.ac, double %i.bq, double %i.cg)
  %i.ci = call double @llvm.fmuladd.f64(double %i.aa, double %i.bp, double %i.ch) ; 4 uses
  store double %i.ci, ptr %i.z, align 8, !tbaa !31, !alias.scope !207
  %i.cj = select i1 %i.au, double %i.ci, double 1.000000e+00 ; 3 uses
  %i.ck = call double @llvm.fmuladd.f64(double %i.cj, double %i.cj, double %i.ax)
  %sqrt = call double @llvm.sqrt.f64(double %i.ck)
  %i.cl = fdiv double 1.000000e+00, %sqrt         ; 2 uses
  %i.cm = fmul double %i.cj, %i.cl                ; 8 uses
  %i.cn = fmul double %i.aw, %i.cl                ; 9 uses
  %i.co = fneg double %i.cn                       ; 9 uses
  %i.cp = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.cm, i64 0 ; 4 uses
  store <2 x double> %i.cp, ptr %14, align 16, !tbaa !31
  store double %i.co, ptr %i.ay, align 16, !tbaa !31
  %i.cq = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.cn, i64 1
  store <2 x double> %i.cq, ptr %i.bb, align 8, !tbaa !31
  %i.cr = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.cm, i64 1 ; 3 uses
  store <2 x double> %i.cr, ptr %i.bd, align 8, !tbaa !31
  %i.cs = extractelement <2 x double> %i.bn, i64 0
  store double %i.cs, ptr %i.u, align 8, !tbaa !31, !alias.scope !207
  %i.ct = extractelement <2 x double> %i.bz, i64 0
  store double %i.ct, ptr %i.v, align 8, !tbaa !31, !alias.scope !207
  %i.cu = extractelement <2 x double> %i.ce, i64 0
  store double %i.cu, ptr %i.w, align 8, !tbaa !31, !alias.scope !207
  %i.cv = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cv, <2 x double> %i.cp, <2 x double> zeroinitializer)
  %i.cx = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> <double 0.000000e+00, double 1.000000e+00>, <2 x double> %i.cw)
  %i.cz = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> zeroinitializer
  %i.da = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.cn, i64 0 ; 3 uses
  %i.db = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cz, <2 x double> %i.da, <2 x double> %i.cy) ; 9 uses
  %i.dc = insertelement <2 x double> poison, double %i.co, i64 0
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.dd, <2 x double> zeroinitializer)
  %i.df = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> zeroinitializer, <2 x double> %i.de)
  %i.dg = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.di = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %i.dh, <2 x double> %i.df) ; 5 uses
  %i.dj = call double @llvm.fmuladd.f64(double %i.as, double %i.cm, double 0.000000e+00)
  %i.dk = fadd double %i.dj, 0.000000e+00
  %i.dl = call double @llvm.fmuladd.f64(double %i.ci, double %i.cn, double %i.dk) ; 2 uses
  %i.dm = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.co, i64 1
  %i.do = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> %i.dn, <2 x double> zeroinitializer)
  %i.dp = fadd <2 x double> %i.do, zeroinitializer
  %i.dq = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.cr, <2 x double> %i.dp) ; 5 uses
  %i.dt = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.du = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> %i.cp, <2 x double> zeroinitializer)
  %i.dv = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> <double 0.000000e+00, double 1.000000e+00>, <2 x double> %i.du)
  %i.dx = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dx, <2 x double> %i.da, <2 x double> %i.dw) ; 7 uses
  %i.dz = shufflevector <2 x double> %i.di, <2 x double> %i.db, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ea = shufflevector <2 x double> %i.dz, <2 x double> %i.dy, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x double> %i.ea, ptr %8, align 8
  %i.eb = shufflevector <2 x double> %i.db, <2 x double> %i.di, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.eb, ptr %i.s, align 8
  store double %i.dl, ptr %i.x, align 8
  store <2 x double> %i.ds, ptr %i.i, align 8
  %i.ec = call double @llvm.fabs.f64(double %i.dl)
  %i.ed = fcmp olt double %i.ec, f0x3E80000000000000
  br i1 %i.ed, label %bb.m, label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.g:                                             ; preds = %bb.d
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.ap

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv11RQDecomp3x3ERKNS_11_InputArrayERKNS_12_OutputArrayES5_S5_S5_S5_, ptr noundef nonnull @.str.1, i32 noundef 1080) #21
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.l:                                             ; preds = %bb.i
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %15, align 8, !tbaa !24   ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !25
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %.pn61 = phi { ptr, i32 } [ %i.eg, %bb.k ], [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.eh, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.ao

bb.m:                                             ; preds = %bb.e
  store double 0.000000e+00, ptr %i.x, align 8, !tbaa !31
  %i.en = extractelement <2 x double> %i.db, i64 0
  %i.eo = call noundef double @llvm.fabs.f64(double %i.en)
  %i.ep = fcmp ogt double %i.eo, f0x3CB0000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.eq = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %17, i64 16
  store double 0.000000e+00, ptr %i.er, align 8, !tbaa !31
  %i.es = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %17, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eu, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.ev, align 8, !tbaa !31
  %i.ew = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ex = shufflevector <2 x double> %i.dy, <2 x double> %i.db, <2 x i32> <i32 0, i32 2>
  %i.ey = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ex, <2 x double> zeroinitializer, <2 x double> zeroinitializer)
  %i.ez = shufflevector <2 x double> %i.db, <2 x double> %i.dy, <2 x i32> <i32 3, i32 1>
  %i.fa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ez, <2 x double> zeroinitializer, <2 x double> %i.ey)
  %i.fb = extractelement <2 x double> %i.di, i64 0
  %i.fc = fadd <2 x double> %i.ew, %i.fa          ; 5 uses
  %i.fd = insertelement <2 x i1> poison, i1 %i.ep, i64 0
  %i.fe = shufflevector <2 x i1> %i.fd, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ff = select <2 x i1> %i.fe, <2 x double> %i.db, <2 x double> <double 0.000000e+00, double 1.000000e+00> ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.ff, %i.ff
  %i.fg = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.fh = extractelement <2 x double> %i.ff, i64 1 ; 2 uses
  %i.fi = call double @llvm.fmuladd.f64(double %i.fh, double %i.fh, double %i.fg)
  %sqrt158 = call double @llvm.sqrt.f64(double %i.fi)
  %i.fj = fdiv double 1.000000e+00, %sqrt158
  %i.fk = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fm = fmul <2 x double> %i.ff, %i.fl          ; 12 uses
  %i.fn = extractelement <2 x double> %i.fm, i64 1 ; 8 uses
  %i.fo = extractelement <2 x double> %i.fm, i64 0 ; 10 uses
  %i.fp = fneg double %i.fo                       ; 13 uses
  store double %i.fn, ptr %17, align 8, !tbaa !31
  store double %i.fo, ptr %i.eq, align 8, !tbaa !31
  store double %i.fp, ptr %i.es, align 8, !tbaa !31
  store double %i.fn, ptr %i.et, align 8, !tbaa !31
  %i.fq = extractelement <2 x double> %i.dy, i64 0
  %i.fr = call double @llvm.fmuladd.f64(double %i.fq, double %i.fo, double 0.000000e+00)
  %i.fs = extractelement <2 x double> %i.dy, i64 1
  %i.ft = call double @llvm.fmuladd.f64(double %i.fs, double %i.fn, double %i.fr)
  %i.fu = insertelement <2 x double> %i.fm, double 0.000000e+00, i64 0
  %i.fv = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ft, i64 0
  %i.fw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dz, <2 x double> %i.fu, <2 x double> %i.fv) ; 3 uses
  %i.fx = shufflevector <2 x double> %i.db, <2 x double> %i.dy, <2 x i32> <i32 0, i32 2>
  %i.fy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> %i.fm, <2 x double> zeroinitializer)
  %i.fz = shufflevector <2 x double> %i.db, <2 x double> %i.dy, <2 x i32> <i32 1, i32 3>
  %i.ga = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gb = insertelement <2 x double> %i.ga, double %i.fp, i64 1 ; 2 uses
  %i.gc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.gb, <2 x double> %i.fy)
  %i.gd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.di, <2 x double> zeroinitializer, <2 x double> %i.gc) ; 4 uses
  %i.ge = shufflevector <2 x double> %i.db, <2 x double> %i.ds, <2 x i32> <i32 1, i32 2>
  %i.gf = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.fp, i64 0
  %i.gg = shufflevector <2 x double> %i.fw, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.gh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ge, <2 x double> %i.gf, <2 x double> %i.gg) ; 2 uses
  %i.gi = extractelement <2 x double> %i.gh, i64 0
  %i.gj = call double @llvm.fmuladd.f64(double %i.fb, double 0.000000e+00, double %i.gi)
  %foldExtExtBinop165 = fadd <2 x double> %i.gh, %i.ds
  %i.gk = extractelement <2 x double> %foldExtExtBinop165, i64 1 ; 3 uses
  %i.gl = extractelement <2 x double> %i.gd, i64 1 ; 2 uses
  store double %i.gl, ptr %13, align 8
  %i.gm = extractelement <2 x double> %i.fw, i64 0 ; 2 uses
  store double %i.gm, ptr %22, align 8
  %i.gn = extractelement <2 x double> %i.fc, i64 0
  store double %i.gn, ptr %23, align 8
  %i.go = extractelement <2 x double> %i.gd, i64 0 ; 2 uses
  store double %i.go, ptr %i.v, align 8
  %i.gp = extractelement <2 x double> %i.fc, i64 1
  store double %i.gp, ptr %i.w, align 8
  %i.gq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 3 uses
  %i.gr = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gr, <2 x double> %i.gb, <2 x double> %i.gq)
  %i.gt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> zeroinitializer, <2 x double> %i.gs)
  %i.gv = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.gv, ptr %i.y, align 8
  store double %i.gk, ptr %i.z, align 8, !tbaa !25
  %i.gw = call double @llvm.fabs.f64(double %i.gj)
  %i.gx = fcmp olt double %i.gw, f0x3E80000000000000
  br i1 %i.gx, label %bb.t, label %bb.o

bb.n:                                             ; preds = %bb.aj, %bb.ah, %bb.ag, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.z
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZN2cv11RQDecomp3x3ERKNS_11_InputArrayERKNS_12_OutputArrayES5_S5_S5_S5_, ptr noundef nonnull @.str.1, i32 noundef 1099) #21
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

bb.s:                                             ; preds = %bb.p
  %i.ha = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hb = load ptr, ptr %18, align 8, !tbaa !24   ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.s
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !25
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hf) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75, %bb.r
  %.pn63 = phi { ptr, i32 } [ %i.gz, %bb.r ], [ %i.ha, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ], [ %i.ha, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.an

bb.t:                                             ; preds = %bb.m
  store double 0.000000e+00, ptr %i.u, align 8, !tbaa !31
  %i.hg = fcmp olt <2 x double> %i.gd, zeroinitializer ; 3 uses
  %i.hh = extractelement <2 x i1> %i.hg, i64 1
  br i1 %i.hh, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.hi = fneg double %i.gl
  store double %i.hi, ptr %13, align 8, !tbaa !31
  %i.hj = extractelement <2 x i1> %i.hg, i64 0
  br i1 %i.hj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.hk = fneg double %i.gm
  store double %i.hk, ptr %22, align 8, !tbaa !31
  %i.hl = fneg double %i.go
  store double %i.hl, ptr %i.v, align 8, !tbaa !31
  store double %i.fp, ptr %i.eq, align 8, !tbaa !31
  store double %i.fo, ptr %i.es, align 8, !tbaa !31
  %i.hm = fneg double %i.fn                       ; 6 uses
  store double %i.hm, ptr %17, align 8, !tbaa !31
  store double %i.hm, ptr %i.et, align 8, !tbaa !31
  %.pre = call double @llvm.fmuladd.f64(double %i.hm, double 0.000000e+00, double 0.000000e+00)
  %i.hn = insertelement <2 x double> %i.fm, double %i.hm, i64 1
  %i.ho = insertelement <2 x double> poison, double %i.fp, i64 0
  %i.hp = insertelement <2 x double> %i.ho, double %i.hm, i64 1
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.hq = fneg <2 x double> %i.fc                 ; 2 uses
  %i.hr = extractelement <2 x double> %i.hq, i64 0
  store double %i.hr, ptr %23, align 8, !tbaa !31
  %i.hs = extractelement <2 x double> %i.hq, i64 1
  store double %i.hs, ptr %i.w, align 8, !tbaa !31
  %i.ht = fneg double %i.gk
  store double %i.ht, ptr %i.z, align 8, !tbaa !31
  store double %i.fp, ptr %i.eq, align 8
  store double %i.fo, ptr %i.es, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eu, i8 0, i64 24, i1 false)
  %i.hu = fneg double %i.cm                       ; 3 uses
  store double %i.hu, ptr %14, align 16, !tbaa !31
  store double %i.cn, ptr %i.ay, align 16, !tbaa !31
  store double %i.co, ptr %i.bc, align 16, !tbaa !31
  store double %i.hu, ptr %i.be, align 16, !tbaa !31
  %i.hv = insertelement <2 x double> %i.fm, double %i.fp, i64 0
  %i.hw = extractelement <2 x double> %i.gq, i64 1
  br label %bb.z

bb.x:                                             ; preds = %bb.t
  %i.hx = insertelement <2 x double> %i.fm, double %i.fp, i64 0 ; 2 uses
  %i.hy = extractelement <2 x i1> %i.hg, i64 0
  %i.hz = extractelement <2 x double> %i.gq, i64 1 ; 2 uses
  br i1 %i.hy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ia = shufflevector <2 x double> %i.fw, <2 x double> %i.fc, <2 x i32> <i32 0, i32 2>
  %i.ib = fneg <2 x double> %i.ia
  store <2 x double> %i.ib, ptr %22, align 8, !tbaa !31
  %i.ic = shufflevector <2 x double> %i.gd, <2 x double> %i.fc, <2 x i32> <i32 0, i32 3>
  %i.id = fneg <2 x double> %i.ic
  store <2 x double> %i.id, ptr %i.v, align 8, !tbaa !31
  %i.ie = fneg double %i.gk
  store double %i.ie, ptr %i.z, align 8, !tbaa !31
  store double %i.fn, ptr %17, align 8
  store double %i.fp, ptr %i.eq, align 8
  store double %i.fo, ptr %i.es, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eu, i8 0, i64 24, i1 false)
  store <2 x double> %i.cp, ptr %14, align 16
  store <2 x double> %i.da, ptr %i.ay, align 16
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.ba, align 16
  store double %i.co, ptr %i.bc, align 16
  store <2 x double> %i.cr, ptr %i.bd, align 8
  %i.if = fneg double %i.bp                       ; 2 uses
  store double %i.if, ptr %i.m, align 8, !tbaa !31
  store double %i.br, ptr %i.n, align 8, !tbaa !31
  store double %i.bq, ptr %i.p, align 8, !tbaa !31
  store double %i.if, ptr %i.q, align 8, !tbaa !31
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.v, %bb.w
  %.pre-phi = phi double [ %i.hz, %bb.x ], [ %i.hz, %bb.y ], [ %.pre, %bb.v ], [ %i.hw, %bb.w ]
  %i.ig = phi double [ %i.co, %bb.x ], [ %i.cn, %bb.y ], [ %i.co, %bb.v ], [ %i.cn, %bb.w ] ; 2 uses
  %i.ih = phi double [ %i.fp, %bb.x ], [ %i.fo, %bb.y ], [ %i.fo, %bb.v ], [ %i.fo, %bb.w ]
  %i.ii = phi double [ %i.fo, %bb.x ], [ %i.fp, %bb.y ], [ %i.fp, %bb.v ], [ %i.fp, %bb.w ] ; 2 uses
  %i.ij = phi double [ %i.fn, %bb.x ], [ %i.fn, %bb.y ], [ %i.hm, %bb.v ], [ %i.fn, %bb.w ] ; 2 uses
  %i.ik = phi double [ %i.cn, %bb.x ], [ %i.co, %bb.y ], [ %i.cn, %bb.v ], [ %i.co, %bb.w ] ; 2 uses
  %i.il = phi double [ %i.cm, %bb.x ], [ %i.cm, %bb.y ], [ %i.cm, %bb.v ], [ %i.hu, %bb.w ] ; 4 uses
  %i.im = phi <2 x double> [ %i.hx, %bb.x ], [ %i.fm, %bb.y ], [ %i.hn, %bb.v ], [ %i.fm, %bb.w ] ; 2 uses
  %i.in = phi <2 x double> [ %i.fm, %bb.x ], [ %i.hx, %bb.y ], [ %i.hp, %bb.v ], [ %i.hv, %bb.w ]
  %i.io = shufflevector <2 x double> %i.in, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ip = fcmp oge double %i.ik, 0.000000e+00
  %i.iq = fcmp oge double %i.ii, 0.000000e+00
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.it = insertelement <2 x double> poison, double %i.il, i64 0
  %i.iu = shufflevector <2 x double> %i.it, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.iv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.io, <2 x double> %i.iu, <2 x double> zeroinitializer)
  %i.iw = insertelement <2 x double> poison, double %i.ik, i64 0 ; 2 uses
  %i.ix = shufflevector <2 x double> %i.iw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.io, <2 x double> %i.ix, <2 x double> zeroinitializer)
  %i.iz = insertelement <2 x double> %i.iw, double %i.il, i64 1
  %i.ja = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iz, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.jb = fadd double %i.ih, %.pre-phi
  %i.jc = call double @llvm.fmuladd.f64(double %i.ii, double 0.000000e+00, double 0.000000e+00)
  %i.jd = fadd double %i.ij, %i.jc
  %i.je = insertelement <2 x double> poison, double %i.jb, i64 0
  %i.jf = insertelement <2 x double> %i.je, double %i.jd, i64 1
  %i.jg = fadd <2 x double> %i.jf, zeroinitializer ; 5 uses
  %i.jh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.im, <2 x double> zeroinitializer, <2 x double> %i.iv)
  %i.ji = insertelement <2 x double> poison, double %i.ig, i64 0
  %i.jj = shufflevector <2 x double> %i.ji, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jj, <2 x double> zeroinitializer, <2 x double> %i.jh) ; 5 uses
  %i.jl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.im, <2 x double> zeroinitializer, <2 x double> %i.iy)
  %i.jm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iu, <2 x double> zeroinitializer, <2 x double> %i.jl) ; 5 uses
  %24 = extractelement <2 x double> %i.jk, i64 0
  %25 = extractelement <2 x double> %i.jg, i64 0
  %26 = extractelement <2 x double> %i.jm, i64 0
  %27 = extractelement <2 x double> %i.jk, i64 1
  %28 = extractelement <2 x double> %i.jg, i64 1
  %29 = extractelement <2 x double> %i.jm, i64 1
  %i.jn = shufflevector <2 x double> %i.jk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jo = shufflevector <2 x double> %i.jg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jp = shufflevector <2 x double> %i.jm, <2 x double> poison, <2 x i32> zeroinitializer
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.jq = load double, ptr %i.m, align 8, !tbaa !31 ; 4 uses
  %i.jr = call double @acos(double noundef %i.jq) #20 ; 2 uses
  %i.js = load double, ptr %i.n, align 8, !tbaa !31 ; 3 uses
  %i.jt = fcmp oge double %i.js, 0.000000e+00
  %i.ju = fneg double %i.jr
  %i.jv = select i1 %i.jt, double %i.jr, double %i.ju
  %i.jw = fmul double %i.jv, f0x404CA5DC1A63C1F8
  %i.jx = call double @acos(double noundef %i.il) #20 ; 2 uses
  %i.jy = fneg double %i.jx
  %i.jz = select i1 %i.ip, double %i.jx, double %i.jy
  %i.ka = fmul double %i.jz, f0x404CA5DC1A63C1F8
  %i.kb = call double @acos(double noundef %i.ij) #20 ; 2 uses
  %i.kc = fneg double %i.kb
  %i.kd = select i1 %i.iq, double %i.kb, double %i.kc
  %i.ke = fmul double %i.kd, f0x404CA5DC1A63C1F8
  store double %i.jw, ptr %0, align 8, !tbaa !31
  store double %i.ka, ptr %i.ir, align 8, !tbaa !31
  store double %i.ke, ptr %i.is, align 8, !tbaa !31
  store double 0.000000e+00, ptr %i.i, align 8
  %i.kf = load <4 x double>, ptr %12, align 8, !tbaa !31, !noalias !208 ; 3 uses
  %i.kg = load double, ptr %i.l, align 8, !tbaa !31, !noalias !208 ; 2 uses
  %i.kh = load double, ptr %i.k, align 8, !tbaa !31, !noalias !208 ; 2 uses
  %i.ki = shufflevector <4 x double> %i.kf, <4 x double> poison, <2 x i32> <i32 3, i32 0> ; 3 uses
  %i.kj = shufflevector <4 x double> %i.kf, <4 x double> poison, <2 x i32> <i32 poison, i32 1>
  %i.kk = insertelement <2 x double> %i.kj, double %i.jq, i64 0
  %i.kl = shufflevector <4 x double> %i.kf, <4 x double> poison, <2 x i32> <i32 poison, i32 2> ; 2 uses
  %i.km = insertelement <2 x double> %i.kl, double %i.js, i64 0 ; 2 uses
  store double %24, ptr %8, align 8
  store double %25, ptr %20, align 8
  store double %26, ptr %21, align 8
  store double %27, ptr %i.r, align 8
  store double %28, ptr %i.s, align 8
  store double %29, ptr %i.t, align 8
  %i.kn = load <2 x double>, ptr %i.o, align 8, !tbaa !31, !noalias !208 ; 3 uses
  %i.ko = load <2 x double>, ptr %i.p, align 8, !tbaa !31, !noalias !208 ; 4 uses
  %i.kp = load double, ptr %i.q, align 8, !tbaa !31, !noalias !208
  %i.kq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jn, <2 x double> %i.ki, <2 x double> zeroinitializer)
  %i.kr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jo, <2 x double> %i.kk, <2 x double> %i.kq)
  %i.ks = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jp, <2 x double> %i.km, <2 x double> %i.kr)
  %i.kt = shufflevector <2 x double> %i.kn, <2 x double> %i.ki, <2 x i32> <i32 0, i32 3>
  %i.ku = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jk, <2 x double> %i.kt, <2 x double> zeroinitializer)
  %i.kv = shufflevector <2 x double> %i.kn, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.kw = insertelement <2 x double> %i.kv, double %i.kh, i64 1
  %i.kx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jg, <2 x double> %i.kw, <2 x double> %i.ku)
  %i.ky = shufflevector <2 x double> %i.kl, <2 x double> %i.ko, <2 x i32> <i32 3, i32 1>
  %i.kz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jm, <2 x double> %i.ky, <2 x double> %i.kx)
  %i.la = extractelement <2 x double> %i.kn, i64 0
  %i.lb = shufflevector <2 x double> %i.jk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.lc = insertelement <2 x double> %i.kv, double %i.kg, i64 0
  %i.ld = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lb, <2 x double> %i.lc, <2 x double> zeroinitializer)
  %i.le = shufflevector <2 x double> %i.jg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.lf = shufflevector <2 x double> %i.ko, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.lg = insertelement <2 x double> %i.lf, double %i.jq, i64 0
  %i.lh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.le, <2 x double> %i.lg, <2 x double> %i.ld)
  %i.li = shufflevector <2 x double> %i.jm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.lj = insertelement <2 x double> %i.ko, double %i.js, i64 0
  %i.lk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.li, <2 x double> %i.lj, <2 x double> %i.lh)
  %i.ll = extractelement <2 x double> %i.ko, i64 0
  %i.lm = shufflevector <2 x double> %i.ks, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.lm, ptr %9, align 16
  store <2 x double> %i.kz, ptr %.sroa.6.0..sroa_idx, align 16
  store <2 x double> %i.lk, ptr %.sroa.8.0..sroa_idx, align 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ln = extractelement <2 x double> %i.ja, i64 1
  %i.lo = fadd double %i.ln, 0.000000e+00
  %i.lp = fadd double %i.ig, %i.lo                ; 3 uses
  %i.lq = extractelement <2 x double> %i.ja, i64 0
  %i.lr = fadd double %i.lq, 0.000000e+00
  %i.ls = fadd double %i.il, %i.lr                ; 3 uses
  store double %i.lp, ptr %i.x, align 8
  store double %i.ls, ptr %i.j, align 8, !tbaa !25
  %i.lt = insertelement <2 x double> poison, double %i.lp, i64 0
  %i.lu = shufflevector <2 x double> %i.lt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lv = insertelement <2 x double> %i.ki, double %i.kg, i64 0
  %i.lw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lu, <2 x double> %i.lv, <2 x double> zeroinitializer)
  %i.lx = insertelement <2 x double> poison, double %i.jq, i64 0
  %i.ly = insertelement <2 x double> %i.lx, double %i.kh, i64 1
  %i.lz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ly, <2 x double> zeroinitializer, <2 x double> %i.lw)
  %i.ma = insertelement <2 x double> poison, double %i.ls, i64 0
  %i.mb = shufflevector <2 x double> %i.ma, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mb, <2 x double> %i.km, <2 x double> %i.lz)
  %i.md = call double @llvm.fmuladd.f64(double %i.lp, double %i.la, double 0.000000e+00)
  %i.me = call double @llvm.fmuladd.f64(double %i.ll, double 0.000000e+00, double %i.md)
  %i.mf = call double @llvm.fmuladd.f64(double %i.ls, double %i.kp, double %i.me)
  %i.mg = shufflevector <2 x double> %i.mc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.mg, ptr %.sroa.10.0..sroa_idx, align 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 64
  store double %i.mf, ptr %.sroa.12.0..sroa_idx, align 16, !tbaa !25
  invoke void @_ZNK2cv4MatxIdLi3ELi3EE9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.f, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.aa unwind label %bb.n

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZNK2cv4MatxIdLi3ELi3EE9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.f, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.ab unwind label %bb.n

bb.ab:                                            ; preds = %bb.aa
  %i.mh = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.ac unwind label %bb.n

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.mh, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZNK2cv4MatxIdLi3ELi3EE9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.f, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.ae unwind label %bb.n

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.mi = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.af unwind label %bb.n

bb.af:                                            ; preds = %bb.ae
  br i1 %i.mi, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZNK2cv4MatxIdLi3ELi3EE9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.f, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.ah unwind label %bb.n

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.mj = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.ai unwind label %bb.n

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.mj, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZNK2cv4MatxIdLi3ELi3EE9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(72) %17, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %i.f, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.ak unwind label %bb.n

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.mk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !39
  %.not.i = icmp eq i32 %i.ml, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %7)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.mm = landingpad { ptr, i32 }
          catch ptr null
  %i.mn = extractvalue { ptr, i32 } %i.mm, 0
  call void @__clang_call_terminate(ptr %i.mn) #23
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  ret void

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %bb.n
  %.pn67 = phi { ptr, i32 } [ %i.gy, %bb.n ], [ %.pn63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn67.pn = phi { ptr, i32 } [ %.pn67, %bb.an ], [ %.pn61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.g
  %.pn67.pn.pn.pn = phi { ptr, i32 } [ %.pn67.pn, %bb.ao ], [ %i.ef, %bb.g ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #20
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.f
  %.pn67.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn67.pn.pn.pn, %bb.ap ], [ %i.ee, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  resume { ptr, i32 } %.pn67.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv25decomposeProjectionMatrixERKNS_11_InputArrayERKNS_12_OutputArrayES5_S5_S5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %10 = alloca %"class.cv::Matx.6", align 16      ; 12 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %12 = alloca %"class.cv::Matx.7", align 16      ; 11 uses
  %13 = alloca %"class.cv::Matx.7", align 8       ; 5 uses
  %14 = alloca %"class.cv::Matx.7", align 8       ; 7 uses
  %15 = alloca %"class.cv::Matx", align 8         ; 5 uses
  %16 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %17 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %18 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %19 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %20 = alloca %"class.cv::Vec", align 16         ; 6 uses
  %21 = alloca %"class.cv::Matx.0", align 16      ; 8 uses
  %22 = alloca %"class.cv::Vec.1", align 8        ; 5 uses
  %23 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv25decomposeProjectionMatrixERKNS_11_InputArrayERKNS_12_OutputArrayES5_S5_S5_S5_S5_S5_E26__cv_trace_location_fn1195)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.a = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.a
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12, !noalias !211
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
          to label %bb.d unwind label %bb.k

bb.c:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = load i32, ptr %9, align 8, !tbaa !20
  %i.f = and i32 %i.e, 31                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %10, i8 0, i64 96, i1 false), !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 -1040056314, ptr %11, align 8, !tbaa !50
  store ptr %10, ptr %i.g, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 16
end_hunk_0
