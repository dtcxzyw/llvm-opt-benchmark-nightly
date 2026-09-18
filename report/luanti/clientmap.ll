Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clientmap?download=true
inline.NumInlined: 4211
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZNK5scene10ISceneNode30getTransformedBoundingBoxEdgesERN4core5arrayINS1_8vector3dIfEEEE:bb.a
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 76
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 80 ; 2 uses
  %i.hv = load float, ptr %i.ht, align 4, !tbaa !482 ; 2 uses
  %i.hw = load float, ptr %i.hs, align 4, !tbaa !481 ; 2 uses
  %i.hx = load float, ptr %i.hu, align 4, !tbaa !483 ; 2 uses
  %i.hy = load <2 x float>, ptr %i.bb, align 8, !tbaa !82
  %i.hz = load <2 x float>, ptr %i.bc, align 8, !tbaa !82
  %i.ia = insertelement <2 x float> poison, float %i.hv, i64 0
  %i.ib = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ic = fmul nsz <2 x float> %i.ib, %i.hz
  %i.id = insertelement <2 x float> poison, float %i.hw, i64 0
  %i.ie = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> zeroinitializer
  %i.if = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ie, <2 x float> %i.hy, <2 x float> %i.ic)
  %i.ig = load <2 x float>, ptr %i.bd, align 8, !tbaa !82
  %i.ih = insertelement <2 x float> poison, float %i.hx, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ii, <2 x float> %i.ig, <2 x float> %i.if)
  %i.ik = load <2 x float>, ptr %i.be, align 8, !tbaa !82
  %i.il = fadd nsz <2 x float> %i.ij, %i.ik
  %i.im = load float, ptr %i.bf, align 8, !tbaa !82
  %i.in = load float, ptr %i.bg, align 8, !tbaa !82
  %i.io = fmul nsz float %i.hv, %i.in
  %i.ip = tail call nsz float @llvm.fmuladd.f32(float %i.hw, float %i.im, float %i.io)
  %i.iq = load float, ptr %i.bh, align 8, !tbaa !82
  %i.ir = tail call nsz float @llvm.fmuladd.f32(float %i.hx, float %i.iq, float %i.ip)
  %i.is = load float, ptr %i.bi, align 8, !tbaa !82
  %i.it = fadd nsz float %i.is, %i.ir
  store <2 x float> %i.il, ptr %i.hs, align 4
  store float %i.it, ptr %i.hu, align 4, !tbaa !82
  %i.iu = load ptr, ptr %1, align 8, !tbaa !655   ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 84 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 88
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 92 ; 2 uses
  %i.iy = load float, ptr %i.iw, align 4, !tbaa !482 ; 2 uses
  %i.iz = load float, ptr %i.iv, align 4, !tbaa !481 ; 2 uses
  %i.ja = load float, ptr %i.ix, align 4, !tbaa !483 ; 2 uses
  %i.jb = load <2 x float>, ptr %i.bb, align 8, !tbaa !82
  %i.jc = load <2 x float>, ptr %i.bc, align 8, !tbaa !82
  %i.jd = insertelement <2 x float> poison, float %i.iy, i64 0
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jf = fmul nsz <2 x float> %i.je, %i.jc
  %i.jg = insertelement <2 x float> poison, float %i.iz, i64 0
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ji = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jh, <2 x float> %i.jb, <2 x float> %i.jf)
  %i.jj = load <2 x float>, ptr %i.bd, align 8, !tbaa !82
  %i.jk = insertelement <2 x float> poison, float %i.ja, i64 0
  %i.jl = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jl, <2 x float> %i.jj, <2 x float> %i.ji)
  %i.jn = load <2 x float>, ptr %i.be, align 8, !tbaa !82
  %i.jo = fadd nsz <2 x float> %i.jm, %i.jn
  %i.jp = load float, ptr %i.bf, align 8, !tbaa !82
  %i.jq = load float, ptr %i.bg, align 8, !tbaa !82
  %i.jr = fmul nsz float %i.iy, %i.jq
  %i.js = tail call nsz float @llvm.fmuladd.f32(float %i.iz, float %i.jp, float %i.jr)
  %i.jt = load float, ptr %i.bh, align 8, !tbaa !82
  %i.ju = tail call nsz float @llvm.fmuladd.f32(float %i.ja, float %i.jt, float %i.js)
  %i.jv = load float, ptr %i.bi, align 8, !tbaa !82
  %i.jw = fadd nsz float %i.jv, %i.ju
  store <2 x float> %i.jo, ptr %i.iv, align 4
  store float %i.jw, ptr %i.ix, align 4, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZNK5scene10ISceneNode25getAbsoluteTransformationEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5scene10ISceneNode25getRelativeTransformationEv(ptr dead_on_unwind noalias writable sret(%"class.core::CMatrix4") align 4 %0, ptr noundef nonnull align 8 dereferenceable(218) %1) unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.a, i8 0, i64 36, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.g = load float, ptr %i.f, align 4, !tbaa !483
  %i.h = fmul nsz float %i.g, f0x3C8EFA35
  %i.i = fpext nsz float %i.h to double
  %sincos39.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.i) ; 2 uses
  %sin40.i.i = extractvalue { double, double } %sincos39.i.i, 0 ; 2 uses
  %cos41.i.i = extractvalue { double, double } %sincos39.i.i, 1 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = fneg nsz double %sin40.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = fneg nsz double %cos41.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = load float, ptr %i.d, align 4, !tbaa !481
  %i.s = load float, ptr %i.e, align 8, !tbaa !482
  %i.t = fmul nsz float %i.r, f0x3C8EFA35
  %i.u = fmul nsz float %i.s, f0x3C8EFA35
  %i.v = fpext nsz float %i.t to double
  %i.w = fpext nsz float %i.u to double
  %sincos.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.v) ; 2 uses
  %sincos36.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.w) ; 2 uses
  %sin.i.i = extractvalue { double, double } %sincos.i.i, 0 ; 3 uses
  %cos.i.i = extractvalue { double, double } %sincos.i.i, 1 ; 3 uses
  %sin37.i.i = extractvalue { double, double } %sincos36.i.i, 0 ; 3 uses
  %cos38.i.i = extractvalue { double, double } %sincos36.i.i, 1 ; 3 uses
  %i.x = insertelement <2 x double> poison, double %cos38.i.i, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = insertelement <2 x double> poison, double %cos41.i.i, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %sin40.i.i, i64 1 ; 4 uses
  %i.ab = fmul nsz <2 x double> %i.y, %i.aa
  %i.ac = fptrunc <2 x double> %i.ab to <2 x float> ; 4 uses
  store <2 x float> %i.ac, ptr %0, align 4, !tbaa !82
  %i.ad = fptrunc nsz double %sin37.i.i to float
  %i.ae = fneg nsz float %i.ad                    ; 4 uses
  store float %i.ae, ptr %i.j, align 4, !tbaa !82
  %i.af = fmul nsz double %sin.i.i, %sin37.i.i
  %i.ag = fmul nsz double %cos.i.i, %sin37.i.i
  %i.ah = insertelement <2 x double> poison, double %cos.i.i, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ak = insertelement <2 x double> %i.aj, double %i.k, i64 0
  %i.al = fmul nsz <2 x double> %i.ai, %i.ak
  %i.am = insertelement <2 x double> poison, double %i.af, i64 0
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.an, <2 x double> %i.aa, <2 x double> %i.al)
  %i.ap = fptrunc <2 x double> %i.ao to <2 x float> ; 3 uses
  store <2 x float> %i.ap, ptr %i.l, align 4, !tbaa !82
  %i.aq = fmul nsz double %sin.i.i, %cos38.i.i
  %i.ar = fptrunc nsz double %i.aq to float       ; 3 uses
  store float %i.ar, ptr %i.m, align 4, !tbaa !82
  %i.as = insertelement <2 x double> poison, double %sin.i.i, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = insertelement <2 x double> %i.aj, double %i.o, i64 1
  %i.av = fmul nsz <2 x double> %i.at, %i.au
  %i.aw = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.aa, <2 x double> %i.av)
  %i.az = fptrunc <2 x double> %i.ay to <2 x float> ; 5 uses
  store <2 x float> %i.az, ptr %i.n, align 4, !tbaa !82
  %i.ba = fmul nsz double %cos.i.i, %cos38.i.i
  %i.bb = fptrunc nsz double %i.ba to float       ; 5 uses
  store float %i.bb, ptr %i.c, align 4, !tbaa !82
  %i.bc = load <2 x float>, ptr %i.p, align 8, !tbaa !82 ; 5 uses
  store <2 x float> %i.bc, ptr %i.q, align 4, !tbaa !82
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.be = load float, ptr %i.bd, align 8, !tbaa !483 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store float %i.be, ptr %i.bf, align 4, !tbaa !82
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !481 ; 4 uses
  %i.bi = fcmp nsz oeq float %i.bh, 1.000000e+00
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !482 ; 2 uses
  %i.bl = fcmp nsz oeq float %i.bk, 1.000000e+00
  %or.cond = select i1 %i.bi, i1 %i.bl, i1 false
  br i1 %or.cond, label %_ZNK4core8vector3dIfEneERKS1_.exit, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread

_ZNK4core8vector3dIfEneERKS1_.exit:               ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !483
  %i.bo = fcmp nsz une float %i.bn, 1.000000e+00
  br i1 %i.bo, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread, label %bb.b

_ZNK4core8vector3dIfEneERKS1_.exit.thread:        ; preds = %bb.a, %_ZNK4core8vector3dIfEneERKS1_.exit
  %i.bp = phi float [ 1.000000e+00, %_ZNK4core8vector3dIfEneERKS1_.exit ], [ %i.bk, %bb.a ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.br = load float, ptr %i.bq, align 8, !tbaa !483 ; 3 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.3172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.4788.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bs = fmul nsz <2 x float> %i.ap, zeroinitializer ; 2 uses
  %i.bt = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.bu, <2 x float> %i.bs)
  %i.bw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> zeroinitializer, <2 x float> %i.bv)
  %i.bx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> zeroinitializer, <2 x float> %i.bw)
  store <2 x float> %i.bx, ptr %0, align 4, !tbaa !82
  %i.by = fmul nsz float %i.ar, 0.000000e+00      ; 2 uses
  %i.bz = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float %i.bh, float %i.by)
  %i.ca = tail call nsz float @llvm.fmuladd.f32(float %i.bb, float 0.000000e+00, float %i.bz)
  %i.cb = tail call nsz float @llvm.fmuladd.f32(float %i.be, float 0.000000e+00, float %i.ca)
  store float %i.cb, ptr %i.j, align 4, !tbaa !82
  %i.cc = fmul nsz float %i.bh, 0.000000e+00
  store float %i.cc, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !82
  %i.cd = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fmul nsz <2 x float> %i.ce, %i.ap
  %i.cg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> zeroinitializer, <2 x float> %i.cf)
  %i.ch = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> zeroinitializer, <2 x float> %i.cg)
  %i.ci = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> zeroinitializer, <2 x float> %i.ch)
  store <2 x float> %i.ci, ptr %i.l, align 4, !tbaa !82
  %i.cj = fmul nsz float %i.bp, %i.ar
  %i.ck = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float 0.000000e+00, float %i.cj)
  %i.cl = tail call nsz float @llvm.fmuladd.f32(float %i.bb, float 0.000000e+00, float %i.ck)
  %i.cm = tail call nsz float @llvm.fmuladd.f32(float %i.be, float 0.000000e+00, float %i.cl)
  store float %i.cm, ptr %i.m, align 4, !tbaa !82
  %i.cn = fmul nsz float %i.bp, 0.000000e+00
  store float %i.cn, ptr %.sroa.3172.0..sroa_idx, align 4, !tbaa !82
  %2 = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float 0.000000e+00, float %i.by) ; 2 uses
  %i.co = tail call nsz float @llvm.fmuladd.f32(float %i.bb, float %i.br, float %2)
  %i.cp = tail call nsz float @llvm.fmuladd.f32(float %i.be, float 0.000000e+00, float %i.co)
  store float %i.cp, ptr %i.c, align 4, !tbaa !82
  %i.cq = fmul nsz float %i.br, 0.000000e+00
  store float %i.cq, ptr %.sroa.4788.0..sroa_idx, align 4, !tbaa !82
  %i.cr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> zeroinitializer, <2 x float> %i.bs) ; 2 uses
  %i.cs = insertelement <2 x float> poison, float %i.br, i64 0
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %i.ct, <2 x float> %i.cr)
  %i.cv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> zeroinitializer, <2 x float> %i.cu)
  store <2 x float> %i.cv, ptr %i.n, align 4, !tbaa !82
  %i.cw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> zeroinitializer, <2 x float> %i.cr)
  %i.cx = fadd nsz <2 x float> %i.bc, %i.cw
  store <2 x float> %i.cx, ptr %i.q, align 4, !tbaa !82
  %3 = tail call nsz float @llvm.fmuladd.f32(float %i.bb, float 0.000000e+00, float %2)
  %i.cy = fadd nsz float %3, %i.be
  store float %i.cy, ptr %i.bf, align 4, !tbaa !82
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !82
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit.thread, %_ZNK4core8vector3dIfEneERKS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5scene10ISceneNode9isVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !112, !range !174, !noundef !175
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5scene10ISceneNode14isTrulyVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !112, !range !174, !noundef !175
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !107  ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(218) %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ false, %bb.a ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode10setVisibleEb(ptr noundef nonnull align 8 dereferenceable(218) %0, i1 noundef zeroext %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 %i.a, ptr %i.b, align 8, !tbaa !112
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5scene10ISceneNode5getIDEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i32, ptr %i.a, align 8, !tbaa !109
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode5setIDEi(ptr noundef nonnull align 8 dereferenceable(218) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %1, ptr %i.a, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode8addChildEPS0_(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %1, %0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !108  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5scene10ISceneNode15setSceneManagerEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %1, ptr noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !58     ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !60
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(218) %1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #38 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %1, ptr %i.r, align 8, !tbaa !257
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %i.p) #2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !656
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8, !tbaa !656
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !90, !range !174, !noundef !175
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = ptrtoint ptr %i.q to i64
  br i1 %i.y, label %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.w, align 8, !tbaa !90
  br label %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit

_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.z, ptr %i.v, align 8, !tbaa !657
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %0, ptr %i.aa, align 8, !tbaa !107
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN5scene10ISceneNode11removeChildEPS0_(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107
  %.not = icmp eq ptr %i.b, %0                    ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.d = load i64, ptr %i.c, align 8, !tbaa !657
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i8 0, ptr %i.f, align 8, !tbaa !90
  store ptr null, ptr %i.a, align 8, !tbaa !107
  %i.g = load ptr, ptr %1, align 8, !tbaa !58
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !60
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !60
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.c, label %_ZNK17IReferenceCounted4dropEv.exit

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(12) %i.j) #2, !inline_history !0
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.b, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !656
  %i.s = add i64 %i.r, -1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !656
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 24) #34
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNK17IReferenceCounted4dropEv.exit
  ret i1 %.not
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode9removeAllEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 9 uses
  %.sroa.06.09 = load ptr, ptr %i.a, align 8, !tbaa !86 ; 3 uses
  %.not10 = icmp eq ptr %.sroa.06.09, %i.a
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !86
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.b = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %.sroa.06.09, %bb.a ] ; 2 uses
  %.not8.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not8.i.i, label %_ZNSt7__cxx114listIPN5scene10ISceneNodeESaIS3_EE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.b, %._crit_edge ] ; 2 uses
  %i.c = load ptr, ptr %.09.i.i, align 8, !tbaa !86 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #34
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt7__cxx114listIPN5scene10ISceneNodeESaIS3_EE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !2

end_hunk_0
