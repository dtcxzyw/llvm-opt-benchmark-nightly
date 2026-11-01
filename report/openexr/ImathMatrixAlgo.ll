Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImathMatrixAlgo?download=true
inline.NumInlined: 1133
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 108
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdEEbRNS_8Matrix44IT_EEiiS5_S5_S3_:bb.a
  %i.hn = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.ho = insertelement <2 x double> %i.hn, double %i.hl, i64 1
  %i.hp = fmul <2 x double> %i.bj, %i.ho
  %i.hq = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.hr = shufflevector <2 x double> %i.hq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.hr, <2 x double> %i.hp) ; 2 uses
  %i.ht = extractelement <2 x double> %i.hs, i64 0
  store double %i.ht, ptr %i.hi, align 8, !tbaa !9
  %i.hu = extractelement <2 x double> %i.hs, i64 1
  store double %i.hu, ptr %i.hk, align 8, !tbaa !9
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.a ; 2 uses
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !9
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.e ; 2 uses
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !9 ; 2 uses
  %i.ia = fneg double %i.hz
  %i.ib = insertelement <2 x double> poison, double %i.ia, i64 0
  %i.ic = insertelement <2 x double> %i.ib, double %i.hz, i64 1
  %i.id = fmul <2 x double> %i.bj, %i.ic
  %i.ie = insertelement <2 x double> poison, double %i.hx, i64 0
  %i.if = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ig = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.if, <2 x double> %i.id) ; 2 uses
  %i.ih = extractelement <2 x double> %i.ig, i64 0
  store double %i.ih, ptr %i.hw, align 8, !tbaa !9
  %i.ii = extractelement <2 x double> %i.ig, i64 1
  store double %i.ii, ptr %i.hy, align 8, !tbaa !9
  %i.ij = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.a ; 2 uses
  %i.il = load double, ptr %i.ik, align 8, !tbaa !9
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.e ; 2 uses
  %i.in = load double, ptr %i.im, align 8, !tbaa !9 ; 2 uses
  %i.io = fneg double %i.in
  %i.ip = insertelement <2 x double> poison, double %i.io, i64 0
  %i.iq = insertelement <2 x double> %i.ip, double %i.in, i64 1
  %i.ir = fmul <2 x double> %i.bj, %i.iq
  %i.is = insertelement <2 x double> poison, double %i.il, i64 0
  %i.it = shufflevector <2 x double> %i.is, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.it, <2 x double> %i.ir) ; 2 uses
  %i.iv = extractelement <2 x double> %i.iu, i64 0
  store double %i.iv, ptr %i.ik, align 8, !tbaa !9
  %i.iw = extractelement <2 x double> %i.iu, i64 1
  store double %i.iw, ptr %i.im, align 8, !tbaa !9
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.a ; 2 uses
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !9
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.e ; 2 uses
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !9 ; 2 uses
  %i.jb = fneg double %i.ja
  %i.jc = insertelement <2 x double> poison, double %i.jb, i64 0
  %i.jd = insertelement <2 x double> %i.jc, double %i.ja, i64 1
  %i.je = fmul <2 x double> %i.ba, %i.jd
  %i.jf = shufflevector <2 x double> %i.je, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jg = insertelement <2 x double> poison, double %i.iy, i64 0
  %i.jh = shufflevector <2 x double> %i.jg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ji = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.jh, <2 x double> %i.jf) ; 2 uses
  %i.jj = extractelement <2 x double> %i.ji, i64 1
  store double %i.jj, ptr %i.ix, align 8, !tbaa !9
  %i.jk = extractelement <2 x double> %i.ji, i64 0
  store double %i.jk, ptr %i.iz, align 8, !tbaa !9
  %i.jl = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.a ; 2 uses
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !9
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.e ; 2 uses
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !9 ; 2 uses
  %i.jq = fneg double %i.jp
  %i.jr = insertelement <2 x double> poison, double %i.jq, i64 0
  %i.js = insertelement <2 x double> %i.jr, double %i.jp, i64 1
  %i.jt = fmul <2 x double> %i.ba, %i.js
  %i.ju = shufflevector <2 x double> %i.jt, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jv = insertelement <2 x double> poison, double %i.jn, i64 0
  %i.jw = shufflevector <2 x double> %i.jv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.jw, <2 x double> %i.ju) ; 2 uses
  %i.jy = extractelement <2 x double> %i.jx, i64 1
  store double %i.jy, ptr %i.jm, align 8, !tbaa !9
  %i.jz = extractelement <2 x double> %i.jx, i64 0
  store double %i.jz, ptr %i.jo, align 8, !tbaa !9
  %i.ka = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.a ; 2 uses
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !9
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.e ; 2 uses
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !9 ; 2 uses
  %i.kf = fneg double %i.ke
  %i.kg = insertelement <2 x double> poison, double %i.kf, i64 0
  %i.kh = insertelement <2 x double> %i.kg, double %i.ke, i64 1
  %i.ki = fmul <2 x double> %i.ba, %i.kh
  %i.kj = shufflevector <2 x double> %i.ki, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.kk = insertelement <2 x double> poison, double %i.kc, i64 0
  %i.kl = shufflevector <2 x double> %i.kk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.km = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.kl, <2 x double> %i.kj) ; 2 uses
  %i.kn = extractelement <2 x double> %i.km, i64 1
  store double %i.kn, ptr %i.kb, align 8, !tbaa !9
  %i.ko = extractelement <2 x double> %i.km, i64 0
  store double %i.ko, ptr %i.kd, align 8, !tbaa !9
  %i.kp = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.a ; 2 uses
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !9
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.e ; 2 uses
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !9 ; 2 uses
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
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.br = load double, ptr %i.bq, align 8, !tbaa !9 ; 2 uses
  %i.bs = fcmp une double %i.br, 0.000000e+00
  br i1 %i.bs, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %2 = load double, ptr %1, align 8, !tbaa !9     ; 2 uses
  %i.bw = load double, ptr %i.bt, align 8, !tbaa !9 ; 2 uses
  %i.bx = load <2 x double>, ptr %i.bu, align 8, !tbaa !9 ; 3 uses
  %i.by = load <2 x double>, ptr %i.bv, align 8, !tbaa !9 ; 3 uses
  %i.bz = fneg <2 x double> %i.by
  %i.ca = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cb = insertelement <2 x double> %i.ca, double %i.bw, i64 1
  %i.cc = fmul <2 x double> %i.cb, %i.bz
  %3 = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %4 = insertelement <2 x double> %3, double %2, i64 1
  %5 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %4, <2 x double> %i.cc) ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %7 = load double, ptr %6, align 8, !tbaa !9
  %8 = fneg double %2
  %9 = load <2 x double>, ptr %0, align 8, !tbaa !9 ; 2 uses
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %11 = insertelement <2 x double> %10, double %8, i64 1
  %i.cd = shufflevector <2 x double> %5, <2 x double> %i.bx, <2 x i32> <i32 1, i32 2>
  %i.ce = fmul <2 x double> %11, %i.cd
  %12 = insertelement <2 x double> %9, double %i.bw, i64 1
  %i.cf = shufflevector <2 x double> %5, <2 x double> %i.by, <2 x i32> <i32 0, i32 2>
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> %i.cf, <2 x double> %i.ce) ; 2 uses
  %i.ch = extractelement <2 x double> %i.cg, i64 0
  %i.ci = extractelement <2 x double> %i.cg, i64 1
  %i.cj = tail call noundef double @llvm.fmuladd.f64(double %7, double %i.ci, double %i.ch)
  %13 = fneg double %i.br
  %i.ck = tail call double @llvm.fmuladd.f64(double %13, double %i.cj, double %.1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2 = phi double [ %i.ck, %bb.f ], [ %.1, %bb.e ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !9 ; 2 uses
  %i.cn = fcmp une double %i.cm, 0.000000e+00
  br i1 %i.cn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cs = load double, ptr %i.cq, align 8, !tbaa !9 ; 2 uses
  %i.ct = load double, ptr %i.co, align 8, !tbaa !9 ; 2 uses
  %i.cu = load <2 x double>, ptr %i.cp, align 8, !tbaa !9 ; 3 uses
  %i.cv = load <2 x double>, ptr %i.cr, align 8, !tbaa !9 ; 3 uses
  %i.cw = fneg <2 x double> %i.cv
  %i.cx = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cy = insertelement <2 x double> %i.cx, double %i.ct, i64 1
  %i.cz = fmul <2 x double> %i.cy, %i.cw
  %i.da = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.db = insertelement <2 x double> %i.da, double %i.cs, i64 1
  %i.dc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %i.db, <2 x double> %i.cz) ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.de = load double, ptr %i.dd, align 8, !tbaa !9
  %i.df = fneg double %i.cs
  %i.dg = load <2 x double>, ptr %0, align 8, !tbaa !9 ; 2 uses
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.di = insertelement <2 x double> %i.dh, double %i.df, i64 1
  %i.dj = shufflevector <2 x double> %i.dc, <2 x double> %i.cu, <2 x i32> <i32 1, i32 2>
  %i.dk = fmul <2 x double> %i.di, %i.dj
  %i.dl = insertelement <2 x double> %i.dg, double %i.ct, i64 1
  %i.dm = shufflevector <2 x double> %i.dc, <2 x double> %i.cv, <2 x i32> <i32 0, i32 2>
  %i.dn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> %i.dm, <2 x double> %i.dk) ; 2 uses
  %i.do = extractelement <2 x double> %i.dn, i64 0
  %i.dp = extractelement <2 x double> %i.dn, i64 1
  %i.dq = tail call noundef double @llvm.fmuladd.f64(double %i.de, double %i.dp, double %i.do)
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.dq, double %.2)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.3 = phi double [ %i.dr, %bb.h ], [ %.2, %bb.g ]
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
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #2

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
end_hunk_0
