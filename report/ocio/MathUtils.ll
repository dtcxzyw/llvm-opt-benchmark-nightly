Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/MathUtils?download=true
inline.NumInlined: 58
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN16OpenColorIO_v2_513GetM44InverseEPfPKf:bb.a
  %i.dm = icmp slt i32 %i.dj, 0
  %i.dn = select i1 %i.dm, i32 %i.dl, i32 %i.dk
  %i.do = icmp ult i32 %i.dn, 3
  br i1 %i.do, label %bb.b, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread: ; preds = %bb.a, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit
  %i.dp = fdiv double 1.000000e+00, %i.cy
  %i.dq = fneg double %i.y                        ; 2 uses
  %i.dr = fmul double %i.cu, %i.dq
  %i.ds = extractelement <2 x double> %i.ab, i64 0
  %i.dt = fneg <2 x double> %i.ak
  %i.du = fneg double %i.b
  %i.dv = insertelement <4 x double> poison, double %i.dp, i64 0
  %i.dw = shufflevector <4 x double> %i.dv, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.dx = insertelement <4 x double> poison, double %i.ce, i64 0
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ea = shufflevector <2 x double> %i.am, <2 x double> %i.aq, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.eb = fmul <2 x double> %i.ea, %i.cg
  %i.ec = insertelement <2 x double> %i.ak, double %i.b, i64 0 ; 2 uses
  %i.ed = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ec, <2 x double> %i.be, <2 x double> %i.eb) ; 2 uses
  %i.ee = extractelement <2 x double> %i.ed, i64 0
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.bx, double %i.ee)
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eh = fmul double %i.cq, %i.by
  %i.ei = insertelement <2 x double> poison, double %i.du, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %i.b, i64 1
  %i.ek = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.el = insertelement <2 x double> %i.ek, double %i.eh, i64 1
  %i.em = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ej, <2 x double> %i.bs, <2 x double> %i.el) ; 2 uses
  %i.en = fneg <2 x double> %i.ab
  %i.eo = shufflevector <2 x double> %i.bh, <2 x double> %i.en, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ep = fmul <2 x double> %i.ea, %i.eo
  %i.eq = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.er = fmul <2 x double> %i.eq, %i.eo
  %i.es = insertelement <2 x double> %i.am, double %i.b, i64 0 ; 2 uses
  %i.et = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %i.ab, <2 x double> %i.ep) ; 5 uses
  %i.eu = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ev = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %i.eu, <2 x double> %i.er) ; 3 uses
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ex = extractelement <2 x double> %i.et, i64 0
  %i.ey = insertelement <2 x double> %i.am, double %i.at, i64 1
  %i.ez = insertelement <2 x double> %i.aq, double %i.ar, i64 1
  %i.fa = shufflevector <2 x double> %i.ak, <2 x double> %i.aq, <2 x i32> <i32 1, i32 3>
  %i.fb = insertelement <2 x double> %i.bh, double %i.dq, i64 1
  %i.fc = fmul <2 x double> %i.fa, %i.fb
  %i.fd = insertelement <2 x double> %i.ab, double %i.y, i64 0
  %i.fe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ec, <2 x double> %i.fd, <2 x double> %i.fc) ; 6 uses
  %i.ff = shufflevector <2 x double> %i.ev, <2 x double> %i.fe, <2 x i32> <i32 0, i32 2>
  %i.fg = fneg <2 x double> %i.ff                 ; 3 uses
  %i.fh = extractelement <2 x double> %i.fe, i64 1
  %i.fi = fneg double %i.fh
  %i.fj = fmul double %i.af, %i.fi
  %i.fk = shufflevector <2 x double> %i.fe, <2 x double> %i.bs, <2 x i32> <i32 1, i32 2>
  %i.fl = insertelement <2 x double> %i.au, double %i.bn, i64 0
  %i.fm = fmul <2 x double> %i.fl, %i.fg
  %i.fn = insertelement <2 x double> %i.az, double %i.m, i64 0
  %i.fo = shufflevector <2 x double> %i.fe, <2 x double> %i.ev, <2 x i32> <i32 1, i32 2>
  %i.fp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> %i.fo, <2 x double> %i.fm)
  %i.fq = shufflevector <2 x double> %i.am, <2 x double> %i.et, <2 x i32> <i32 1, i32 3>
  %i.fr = insertelement <2 x double> %i.bw, double %i.bn, i64 1
  %i.fs = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ft = insertelement <2 x double> %i.fs, double %i.fj, i64 1
  %i.fu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> %i.fr, <2 x double> %i.ft) ; 2 uses
  %i.fv = fneg <2 x double> %i.ae
  %i.fw = shufflevector <2 x double> %i.bc, <2 x double> %i.fv, <2 x i32> <i32 0, i32 2>
  %i.fx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fw, <2 x double> %i.fe, <2 x double> %i.fp)
  %i.fy = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.ds, double %i.dr) ; 4 uses
  %i.fz = insertelement <2 x double> %i.bs, double %i.fy, i64 0
  %i.ga = fneg <2 x double> %i.fz
  %i.gb = fmul <2 x double> %i.aq, %i.ga
  %i.gc = fneg double %i.ex                       ; 2 uses
  %i.gd = shufflevector <2 x double> %i.ae, <2 x double> %i.ak, <2 x i32> <i32 1, i32 2>
  %i.ge = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gf = insertelement <2 x double> %i.ge, double %i.gc, i64 1
  %i.gg = fmul <2 x double> %i.gd, %i.gf
  %i.gh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.fk, <2 x double> %i.gb)
  %i.gi = insertelement <2 x double> %i.fg, double %i.gc, i64 1
  %i.gj = fmul <2 x double> %i.ey, %i.gi
  %i.gk = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.gl = insertelement <2 x double> %i.gk, double %i.fy, i64 1
  %i.gm = shufflevector <2 x double> %i.et, <2 x double> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.gn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gl, <2 x double> %i.gm, <2 x double> %i.gg)
  %i.go = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.ew, <2 x double> %i.gj)
  %i.gp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ez, <2 x double> %i.et, <2 x double> %i.go)
  %i.gq = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.gr = insertelement <2 x double> %i.gq, double %i.ar, i64 0
  %i.gs = shufflevector <2 x double> %i.fe, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.gt = insertelement <2 x double> %i.gs, double %i.fy, i64 0
  %i.gu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gr, <2 x double> %i.gt, <2 x double> %i.gn)
  %i.gv = shufflevector <2 x double> %i.et, <2 x double> %i.be, <2 x i32> <i32 1, i32 2>
  %i.gw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> %i.gv, <2 x double> %i.gh)
  %i.gx = extractelement <2 x double> %i.fu, i64 1
  %i.gy = tail call double @llvm.fmuladd.f64(double %i.at, double %i.fy, double %i.gx)
  %i.gz = insertelement <4 x double> %i.dx, double %i.gy, i64 1
  %i.ha = shufflevector <2 x double> %i.gw, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hb = shufflevector <4 x double> %i.gz, <4 x double> %i.ha, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hc = fmul <4 x double> %i.dw, %i.hb
  %i.hd = fptrunc <4 x double> %i.hc to <4 x float>
  store <4 x float> %i.hd, ptr %0, align 4, !tbaa !10
  %i.he = shufflevector <2 x double> %i.ck, <2 x double> %i.gp, <4 x i32> <i32 0, i32 3, i32 2, i32 poison>
  %i.hf = insertelement <4 x double> %i.he, double %i.ef, i64 3
  %i.hg = fmul <4 x double> %i.dw, %i.hf
  %i.hh = fptrunc <4 x double> %i.hg to <4 x float>
  store <4 x float> %i.hh, ptr %i.dy, align 4, !tbaa !10
  %i.hi = shufflevector <2 x double> %i.cn, <2 x double> %i.fx, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.hj = shufflevector <2 x double> %i.em, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.hk = shufflevector <4 x double> %i.hi, <4 x double> %i.hj, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.hl = fmul <4 x double> %i.dw, %i.hk
  %i.hm = fptrunc <4 x double> %i.hl to <4 x float>
  store <4 x float> %i.hm, ptr %i.dz, align 4, !tbaa !10
  %i.hn = insertelement <4 x double> poison, double %i.cp, i64 0
  %i.ho = shufflevector <2 x double> %i.gu, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hp = shufflevector <4 x double> %i.hn, <4 x double> %i.ho, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.hq = shufflevector <2 x double> %i.fu, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.hr = shufflevector <4 x double> %i.hp, <4 x double> %i.hq, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.hs = fmul <4 x double> %i.dw, %i.hr
  %i.ht = fptrunc <4 x double> %i.hs to <4 x float>
  store <4 x float> %i.ht, ptr %i.eg, align 4, !tbaa !10
  br label %bb.b

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread
  %.0 = phi i1 [ false, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit ], [ true, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread ]
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_516GetM44M44ProductEPfPKfS2_(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %.sroa.1965.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.a = load <4 x float>, ptr %1, align 4        ; 4 uses
  %i.b = load <4 x float>, ptr %2, align 4        ; 4 uses
  %i.c = load <4 x float>, ptr %.sroa.19.0..sroa_idx, align 4 ; 4 uses
  %i.d = load <4 x float>, ptr %.sroa.35.0..sroa_idx, align 4 ; 4 uses
  %i.e = load <4 x float>, ptr %.sroa.51.0..sroa_idx, align 4 ; 4 uses
  %i.f = shufflevector <4 x float> %i.a, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.g = fmul <4 x float> %i.f, %i.c
  %i.h = shufflevector <4 x float> %i.a, <4 x float> poison, <4 x i32> zeroinitializer
  %i.i = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.h, <4 x float> %i.b, <4 x float> %i.g)
  %i.j = shufflevector <4 x float> %i.a, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.k = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.j, <4 x float> %i.d, <4 x float> %i.i)
  %i.l = shufflevector <4 x float> %i.a, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.m = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.l, <4 x float> %i.e, <4 x float> %i.k)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load <4 x float>, ptr %.sroa.1965.0..sroa_idx, align 4 ; 4 uses
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.q = fmul <4 x float> %i.p, %i.c
  %i.r = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer
  %i.s = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> %i.b, <4 x float> %i.q)
  %i.t = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.u = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.d, <4 x float> %i.s)
  %i.v = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.w = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> %i.e, <4 x float> %i.u)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load <4 x float>, ptr %.sroa.3581.0..sroa_idx, align 4 ; 4 uses
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aa = fmul <4 x float> %i.z, %i.c
  %i.ab = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ac = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.b, <4 x float> %i.aa)
  %i.ad = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ae = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %i.d, <4 x float> %i.ac)
  %i.af = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.e, <4 x float> %i.ae)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = load <4 x float>, ptr %.sroa.5197.0..sroa_idx, align 4 ; 4 uses
  store <4 x float> %i.m, ptr %0, align 4, !tbaa !10
  store <4 x float> %i.w, ptr %i.n, align 4, !tbaa !10
  store <4 x float> %i.ag, ptr %i.x, align 4, !tbaa !10
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ak = fmul <4 x float> %i.aj, %i.c
  %i.al = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> zeroinitializer
  %i.am = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.b, <4 x float> %i.ak)
  %i.an = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ao = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %i.d, <4 x float> %i.am)
  %i.ap = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.aq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> %i.e, <4 x float> %i.ao)
  store <4 x float> %i.aq, ptr %i.ah, align 4, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_513GetMxbCombineEPfS0_PKfS2_S2_S2_(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #5 {
bb.a:
  %.sroa.725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.1127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.1529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.a = load <4 x float>, ptr %2, align 4        ; 4 uses
  %6 = load <4 x float>, ptr %.sroa.725.0..sroa_idx, align 4 ; 4 uses
  %i.b = load <4 x float>, ptr %.sroa.1127.0..sroa_idx, align 4 ; 4 uses
  %i.c = load <4 x float>, ptr %.sroa.1529.0..sroa_idx, align 4 ; 4 uses
  %i.d = load <4 x float>, ptr %4, align 4        ; 8 uses
  %7 = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %8 = fmul <4 x float> %6, %7
  %9 = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> zeroinitializer
  %10 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %9, <4 x float> %i.a, <4 x float> %8)
  %11 = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %12 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %11, <4 x float> %i.b, <4 x float> %10)
  %13 = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %14 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %13, <4 x float> %i.c, <4 x float> %12)
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %16 = load <4 x float>, ptr %.sroa.11.0..sroa_idx, align 4 ; 8 uses
  %i.e = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.f = fmul <4 x float> %6, %i.e
  %17 = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> zeroinitializer
  %18 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %17, <4 x float> %i.a, <4 x float> %i.f)
  %19 = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %20 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %19, <4 x float> %i.b, <4 x float> %18)
  %21 = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.g = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %21, <4 x float> %i.c, <4 x float> %20)
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %23 = load <4 x float>, ptr %.sroa.19.0..sroa_idx, align 4 ; 8 uses
  %24 = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %25 = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.h = fmul <4 x float> %6, %25
  %26 = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> zeroinitializer
  %i.i = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> %i.a, <4 x float> %i.h)
  %27 = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.j = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %27, <4 x float> %i.b, <4 x float> %i.i)
  %28 = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.k = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %28, <4 x float> %i.c, <4 x float> %i.j)
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %30 = load <4 x float>, ptr %.sroa.27.0..sroa_idx, align 4 ; 8 uses
  %31 = shufflevector <4 x float> %30, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %32 = shufflevector <4 x float> %30, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.l = fmul <4 x float> %6, %32
  %33 = shufflevector <4 x float> %30, <4 x float> poison, <4 x i32> zeroinitializer
  %i.m = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %33, <4 x float> %i.a, <4 x float> %i.l)
  %34 = shufflevector <4 x float> %30, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.n = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %34, <4 x float> %i.b, <4 x float> %i.m)
  %35 = shufflevector <4 x float> %30, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.o = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %35, <4 x float> %i.c, <4 x float> %i.n)
  %36 = load <4 x float>, ptr %3, align 4         ; 4 uses
  %37 = load <4 x float>, ptr %5, align 4
  store <4 x float> %14, ptr %0, align 4, !tbaa !10
  store <4 x float> %i.g, ptr %15, align 4, !tbaa !10
  store <4 x float> %i.k, ptr %22, align 4, !tbaa !10
  store <4 x float> %i.o, ptr %29, align 4, !tbaa !10
  %38 = shufflevector <4 x float> %36, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %39 = shufflevector <4 x float> %i.d, <4 x float> %16, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %40 = shufflevector <4 x float> %39, <4 x float> %23, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %41 = shufflevector <4 x float> %40, <4 x float> %31, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %42 = fmul <4 x float> %38, %41
  %43 = shufflevector <4 x float> %i.d, <4 x float> %16, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %44 = shufflevector <4 x float> %43, <4 x float> %24, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %45 = shufflevector <4 x float> %44, <4 x float> %30, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %46 = shufflevector <4 x float> %36, <4 x float> poison, <4 x i32> zeroinitializer
  %i.p = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %45, <4 x float> %46, <4 x float> %42)
  %47 = shufflevector <4 x float> %i.d, <4 x float> %16, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %48 = shufflevector <4 x float> %47, <4 x float> %23, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %49 = shufflevector <4 x float> %48, <4 x float> %30, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %50 = shufflevector <4 x float> %36, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.q = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %49, <4 x float> %50, <4 x float> %i.p)
  %51 = shufflevector <4 x float> %i.d, <4 x float> %16, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %52 = shufflevector <4 x float> %51, <4 x float> %23, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %53 = shufflevector <4 x float> %52, <4 x float> %30, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.r = shufflevector <4 x float> %36, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.s = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %53, <4 x float> %i.r, <4 x float> %i.q)
  %i.t = fadd <4 x float> %i.s, %37
  store <4 x float> %i.t, ptr %1, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_513GetMxbInverseEPfS0_PKfS2_(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x float], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 64, i1 false)
  %.sroa.0.0.copyload = load float, ptr %3, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.12.0.copyload = load float, ptr %.sroa.12.0..sroa_idx, align 4
  %i.b = call noundef zeroext i1 @_ZN16OpenColorIO_v2_513GetM44InverseEPfPKf(ptr noundef %0, ptr noundef nonnull %i.a) ; 2 uses
  br i1 %i.b, label %.preheader.preheader, label %bb.b

.preheader.preheader:                             ; preds = %bb.a
  %i.c = fneg float %.sroa.0.0.copyload           ; 4 uses
  %i.d = fneg float %.sroa.6.0.copyload           ; 4 uses
  %i.e = fneg float %.sroa.9.0.copyload           ; 4 uses
  %i.f = fneg float %.sroa.12.0.copyload          ; 4 uses
  %i.g = load float, ptr %0, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !10
  %i.j = fmul float %i.i, %i.d
  %i.k = tail call float @llvm.fmuladd.f32(float %i.g, float %i.c, float %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !10
  %i.n = tail call float @llvm.fmuladd.f32(float %i.m, float %i.e, float %i.k)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load float, ptr %i.o, align 4, !tbaa !10
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float %i.f, float %i.n)
  store float %i.q, ptr %1, align 4, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load float, ptr %i.r, align 4, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.u = load float, ptr %i.t, align 4, !tbaa !10
  %i.v = fmul float %i.u, %i.d
  %i.w = tail call float @llvm.fmuladd.f32(float %i.s, float %i.c, float %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load float, ptr %i.x, align 4, !tbaa !10
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float %i.e, float %i.w)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !10
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.f, float %i.z)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.ac, ptr %i.ad, align 4, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load float, ptr %i.ae, align 4, !tbaa !10
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !10
  %i.ai = fmul float %i.ah, %i.d
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.af, float %i.c, float %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load float, ptr %i.ak, align 4, !tbaa !10
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %i.e, float %i.aj)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ao = load float, ptr %i.an, align 4, !tbaa !10
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.f, float %i.am)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.ap, ptr %i.aq, align 4, !tbaa !10
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.as = load float, ptr %i.ar, align 4, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.au = load float, ptr %i.at, align 4, !tbaa !10
  %i.av = fmul float %i.au, %i.d
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.as, float %i.c, float %i.av)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !10
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.e, float %i.aw)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !10
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.f, float %i.az)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.bc, ptr %i.bd, align 4, !tbaa !10
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_511HalfsDifferEN9Imath_3_14halfES1_i(i16 %0, i16 %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i16 %0 to i32                       ; 2 uses
  %i.b = icmp ult i16 %0, 32767
  %i.c = add nuw nsw i32 %i.a, 32768
  %i.d = sub nuw nsw i32 65536, %i.a
  %i.e = select i1 %i.b, i32 %i.c, i32 %i.d       ; 3 uses
  %i.f = zext i16 %1 to i32                       ; 2 uses
  %i.g = icmp ult i16 %1, 32767
  %i.h = add nuw nsw i32 %i.f, 32768
  %i.i = sub nuw nsw i32 65536, %i.f
  %i.j = select i1 %i.g, i32 %i.h, i32 %i.i       ; 3 uses
  %i.k = and i16 %0, 31744
  %i.l = icmp eq i16 %i.k, 31744
  %i.m = and i16 %0, 1023
  %i.n = icmp ne i16 %i.m, 0
  %i.o = and i1 %i.l, %i.n
  %i.p = and i16 %1, 31744                        ; 2 uses
  %i.q = and i16 %1, 1023                         ; 2 uses
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = icmp ne i16 %i.p, 31744
  %i.s = icmp eq i16 %i.q, 0
  %.not15 = or i1 %i.r, %i.s
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.t = icmp eq i16 %i.p, 31744
  %i.u = icmp ne i16 %i.q, 0
  %i.v = and i1 %i.t, %i.u
  br i1 %i.v, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = and i16 %0, 32767
  %i.x = icmp eq i16 %i.w, 31744
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = icmp ne i32 %i.e, %i.j
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.z = and i16 %1, 32767
  %i.aa = icmp eq i16 %i.z, 31744
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp ne i32 %i.e, %i.j
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ac = sub nsw i32 %i.j, %i.e
  %i.ad = tail call i32 @llvm.abs.i32(i32 %i.ac, i1 true)
  %i.ae = icmp sgt i32 %i.ad, %2
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h, %bb.g, %bb.e, %bb.b
  %.0 = phi i1 [ %.not15, %bb.b ], [ %i.ae, %bb.h ], [ %i.y, %bb.e ], [ %i.ab, %bb.g ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"float", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"double", !4, i64 0}
!12 = !{!11, !11, i64 0}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
end_hunk_0
