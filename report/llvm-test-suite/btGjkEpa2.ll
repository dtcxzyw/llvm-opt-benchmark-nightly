inline.NumInlined: 449
inline.NumDeleted: 83
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_PfRj:bb.a
  %i.en = shl nuw nsw i32 %.2133.1, 1
  %i.eo = and i32 %i.en, 2
  %i.ep = shl nuw nsw i32 %.2133.1, 1
  %i.eq = and i32 %i.ep, 4
  %i.er = or disjoint i32 %i.eo, %i.eq
  store i32 %i.er, ptr %4, align 4, !tbaa !4
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %.sroa.0112.2.1, ptr %i.es, align 4, !tbaa !24
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %.sroa.7.2.1, ptr %i.et, align 4, !tbaa !24
  store float 0.000000e+00, ptr %3, align 4, !tbaa !24
  %.pre164 = load float, ptr %2, align 4, !tbaa !24
  %i.eu = load <2 x float>, ptr %i.h, align 4, !tbaa !24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.1, %bb.h
  %i.ev = phi float [ %.pre164, %bb.o ], [ %.pre165, %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.1 ], [ %.pre165, %bb.h ] ; 6 uses
  %.1.1 = phi i32 [ %.2133.1, %bb.o ], [ %.2133.1, %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.1 ], [ %.1, %bb.h ]
  %.sroa.0112.1.1 = phi float [ %.sroa.0112.2.1, %bb.o ], [ %.sroa.0112.2.1, %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.1 ], [ %.sroa.0112.1, %bb.h ]
  %.sroa.7.1.1 = phi float [ %.sroa.7.2.1, %bb.o ], [ %.sroa.7.2.1, %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.1 ], [ %.sroa.7.1, %bb.h ]
  %.2.1 = phi float [ %.1.i.1, %bb.o ], [ %.2, %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.1 ], [ %.2, %bb.h ] ; 4 uses
  %i.ew = phi <2 x float> [ %i.eu, %bb.o ], [ %i.cr, %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.1 ], [ %i.cr, %bb.h ] ; 4 uses
  %i.ex = fmul float %i.aa, %i.ar
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.y, float %i.ak, float %i.ex)
  %i.ez = fmul float %i.j, %i.as
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.an, float %i.ez)
  %i.fb = fmul float %i.y, %i.at
  %i.fc = tail call float @llvm.fmuladd.f32(float %i.j, float %i.al, float %i.fb)
  %i.fd = extractelement <2 x float> %i.ew, i64 0 ; 4 uses
  %i.fe = fmul float %i.fd, %i.fa
  %i.ff = tail call float @llvm.fmuladd.f32(float %i.ev, float %i.ey, float %i.fe)
  %i.fg = extractelement <2 x float> %i.ew, i64 1 ; 6 uses
  %i.fh = tail call noundef float @llvm.fmuladd.f32(float %i.fg, float %i.fc, float %i.ff)
  %i.fi = fcmp ogt float %i.fh, 0.000000e+00
  br i1 %i.fi, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.fj = load float, ptr %0, align 4, !tbaa !24  ; 3 uses
  %i.fk = fsub float %i.fj, %i.ev                 ; 4 uses
  %i.fl = load float, ptr %i.c, align 4, !tbaa !24 ; 3 uses
  %i.fm = fsub float %i.fl, %i.fd                 ; 4 uses
  %i.fn = load float, ptr %i.e, align 4, !tbaa !24 ; 3 uses
  %i.fo = fsub float %i.fn, %i.fg                 ; 4 uses
  %i.fp = fmul float %i.fm, %i.fm
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.fk, float %i.fp)
  %i.fr = tail call noundef float @llvm.fmuladd.f32(float %i.fo, float %i.fo, float %i.fq) ; 2 uses
  %i.fs = fcmp ogt float %i.fr, 0.000000e+00
  br i1 %i.fs, label %bb.r, label %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.2

bb.r:                                             ; preds = %bb.q
  %i.ft = fmul float %i.fd, %i.fm
  %i.fu = tail call float @llvm.fmuladd.f32(float %i.ev, float %i.fk, float %i.ft)
  %i.fv = tail call noundef float @llvm.fmuladd.f32(float %i.fg, float %i.fo, float %i.fu)
  %i.fw = fneg float %i.fv
  %i.fx = fdiv float %i.fw, %i.fr                 ; 7 uses
  %i.fy = fcmp ult float %i.fx, 1.000000e+00
  br i1 %i.fy, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fz = fmul float %i.fl, %i.fl
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.fj, float %i.fj, float %i.fz)
  %i.gb = tail call noundef float @llvm.fmuladd.f32(float %i.fn, float %i.fn, float %i.ga)
  br label %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.2

bb.t:                                             ; preds = %bb.r
  %i.gc = fcmp ugt float %i.fx, 0.000000e+00
  br i1 %i.gc, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %foldExtExtBinop203 = fmul <2 x float> %i.ew, %i.ew
  %i.gd = extractelement <2 x float> %foldExtExtBinop203, i64 0
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.ev, float %i.ev, float %i.gd)
  %i.gf = tail call noundef float @llvm.fmuladd.f32(float %i.fg, float %i.fg, float %i.ge)
  br label %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.2

bb.v:                                             ; preds = %bb.t
  %i.gg = fsub float 1.000000e+00, %i.fx
  %i.gh = fmul float %i.fk, %i.fx
  %i.gi = fmul float %i.fm, %i.fx
  %i.gj = fmul float %i.fo, %i.fx
  %i.gk = fadd float %i.ev, %i.gh                 ; 2 uses
  %i.gl = fadd float %i.fd, %i.gi                 ; 2 uses
  %i.gm = fadd float %i.fg, %i.gj                 ; 2 uses
  %i.gn = fmul float %i.gl, %i.gl
  %i.go = tail call float @llvm.fmuladd.f32(float %i.gk, float %i.gk, float %i.gn)
  %i.gp = tail call noundef float @llvm.fmuladd.f32(float %i.gm, float %i.gm, float %i.go)
  br label %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.2

_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.2: ; preds = %bb.v, %bb.u, %bb.s, %bb.q
  %.2133.2 = phi i32 [ 3, %bb.v ], [ 1, %bb.u ], [ 2, %bb.s ], [ %.1.1, %bb.q ] ; 2 uses
  %.sroa.0112.2.2 = phi float [ %i.gg, %bb.v ], [ 1.000000e+00, %bb.u ], [ 0.000000e+00, %bb.s ], [ %.sroa.0112.1.1, %bb.q ]
  %.sroa.7.2.2 = phi float [ %i.fx, %bb.v ], [ 0.000000e+00, %bb.u ], [ 1.000000e+00, %bb.s ], [ %.sroa.7.1.1, %bb.q ]
  %.1.i.2 = phi float [ %i.gp, %bb.v ], [ %i.gf, %bb.u ], [ %i.gb, %bb.s ], [ -1.000000e+00, %bb.q ] ; 2 uses
  %i.gq = fcmp olt float %.2.1, 0.000000e+00
  %i.gr = fcmp olt float %.1.i.2, %.2.1
  %or.cond.2 = or i1 %i.gq, %i.gr
  br i1 %or.cond.2, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.2
  %i.gs = shl nuw nsw i32 %.2133.2, 2
  %i.gt = and i32 %i.gs, 4
  %i.gu = lshr i32 %.2133.2, 1
  %i.gv = or disjoint i32 %i.gt, %i.gu
  store i32 %i.gv, ptr %4, align 4, !tbaa !4
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %.sroa.0112.2.2, ptr %i.gw, align 4, !tbaa !24
  store float %.sroa.7.2.2, ptr %3, align 4, !tbaa !24
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float 0.000000e+00, ptr %i.gx, align 4, !tbaa !24
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.2, %bb.p
  %.2.2 = phi float [ %.1.i.2, %bb.w ], [ %.2.1, %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.2 ], [ %.2.1, %bb.p ] ; 2 uses
  %i.gy = fcmp olt float %.2.2, 0.000000e+00
  br i1 %i.gy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gz = load float, ptr %0, align 4, !tbaa !24
  %i.ha = load float, ptr %i.c, align 4, !tbaa !24
  %i.hb = fmul float %i.al, %i.ha
  %i.hc = tail call float @llvm.fmuladd.f32(float %i.gz, float %i.an, float %i.hb)
  %i.hd = load float, ptr %i.e, align 4, !tbaa !24
  %i.he = tail call noundef float @llvm.fmuladd.f32(float %i.hd, float %i.ak, float %i.hc)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ap) ; 2 uses
  %i.hf = fdiv float %i.he, %i.ap                 ; 2 uses
  store i32 7, ptr %4, align 4, !tbaa !4
  %i.hg = load float, ptr %i.f, align 4, !tbaa !24
  %i.hh = insertelement <2 x float> poison, float %i.hf, i64 0
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hj = fmul <2 x float> %i.ad, %i.hi           ; 3 uses
  %i.hk = fmul float %i.ak, %i.hf                 ; 3 uses
  %i.hl = extractelement <2 x float> %i.hj, i64 1 ; 3 uses
  %i.hm = fmul float %i.hl, %i.hl
  %i.hn = extractelement <2 x float> %i.hj, i64 0 ; 3 uses
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.hn, float %i.hn, float %i.hm)
  %i.hp = load <2 x float>, ptr %1, align 4, !tbaa !24
  %i.hq = fsub <2 x float> %i.hp, %i.hj           ; 2 uses
  %i.hr = fsub float %i.hg, %i.hk                 ; 2 uses
  %i.hs = fneg float %i.hr
  %i.ht = fneg <2 x float> %i.hq
  %i.hu = shufflevector <2 x float> %i.v, <2 x float> %i.w, <4 x i32> <i32 poison, i32 1, i32 2, i32 0> ; 2 uses
  %i.hv = insertelement <4 x float> %i.hu, float %i.ho, i64 0
  %i.hw = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.hs, i64 1
  %i.hx = shufflevector <2 x float> %i.ht, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hy = shufflevector <4 x float> %i.hw, <4 x float> %i.hx, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hz = fmul <4 x float> %i.hv, %i.hy
  %i.ia = insertelement <4 x float> poison, float %i.hk, i64 0
  %i.ib = shufflevector <4 x float> %i.ia, <4 x float> %i.hu, <4 x i32> <i32 0, i32 7, i32 5, i32 6> ; 2 uses
  %i.ic = shufflevector <2 x float> %i.hq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.id = shufflevector <4 x float> %i.ib, <4 x float> %i.ic, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ie = insertelement <4 x float> %i.id, float %i.hr, i64 3
  %i.if = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ib, <4 x float> %i.ie, <4 x float> %i.hz) ; 5 uses
  %foldExtExtBinop205 = fmul <4 x float> %i.if, %i.if
  %i.ig = extractelement <4 x float> %foldExtExtBinop205, i64 1
  %i.ih = extractelement <4 x float> %i.if, i64 3 ; 2 uses
  %i.ii = tail call float @llvm.fmuladd.f32(float %i.ih, float %i.ih, float %i.ig)
  %i.ij = extractelement <4 x float> %i.if, i64 2 ; 2 uses
  %i.ik = tail call noundef float @llvm.fmuladd.f32(float %i.ij, float %i.ij, float %i.ii)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.ik)
  %i.il = fdiv float %sqrt.i, %sqrt               ; 2 uses
  store float %i.il, ptr %3, align 4, !tbaa !24
  %i.im = load float, ptr %2, align 4, !tbaa !24
  %i.in = fsub float %i.im, %i.hn                 ; 2 uses
  %i.io = load float, ptr %i.h, align 4, !tbaa !24
  %i.ip = fsub float %i.io, %i.hl                 ; 2 uses
  %i.iq = load float, ptr %i.i, align 4, !tbaa !24
  %i.ir = fsub float %i.iq, %i.hk                 ; 2 uses
  %i.is = fneg float %i.ip
  %i.it = fmul float %i.aa, %i.is
  %i.iu = tail call float @llvm.fmuladd.f32(float %i.y, float %i.ir, float %i.it) ; 2 uses
  %i.iv = fneg float %i.ir
  %i.iw = fmul float %i.j, %i.iv
  %i.ix = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.in, float %i.iw) ; 2 uses
  %i.iy = fneg float %i.in
  %i.iz = fmul float %i.y, %i.iy
  %i.ja = tail call float @llvm.fmuladd.f32(float %i.j, float %i.ip, float %i.iz) ; 2 uses
  %i.jb = fmul float %i.ix, %i.ix
  %i.jc = tail call float @llvm.fmuladd.f32(float %i.iu, float %i.iu, float %i.jb)
  %i.jd = tail call noundef float @llvm.fmuladd.f32(float %i.ja, float %i.ja, float %i.jc)
  %sqrt.i90 = tail call noundef float @llvm.sqrt.f32(float %i.jd)
  %i.je = fdiv float %sqrt.i90, %sqrt             ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.je, ptr %i.jf, align 4, !tbaa !24
  %i.jg = fadd float %i.il, %i.je
  %i.jh = fsub float 1.000000e+00, %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.jh, ptr %i.ji, align 4, !tbaa !24
  %i.jj = extractelement <4 x float> %i.if, i64 0
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.a
  %.0 = phi float [ -1.000000e+00, %bb.a ], [ %i.jj, %bb.y ], [ %.2.2, %bb.x ]
  ret float %.0
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef float @_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_S3_PfRj(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 10 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = load float, ptr %0, align 4, !tbaa !24   ; 3 uses
  %6 = load float, ptr %3, align 4, !tbaa !24     ; 4 uses
  %7 = fsub float %i.c, %6                        ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %8 = load float, ptr %i.d, align 4, !tbaa !24   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 6 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !24 ; 4 uses
  %i.g = fsub float %8, %i.f                      ; 5 uses
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load float, ptr %9, align 4, !tbaa !24   ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.i = load float, ptr %10, align 4, !tbaa !24  ; 4 uses
  %i.j = fsub float %i.h, %i.i                    ; 5 uses
  %i.k = load float, ptr %1, align 4, !tbaa !24   ; 3 uses
  %i.l = fsub float %i.k, %6                      ; 5 uses
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.m = load float, ptr %11, align 4, !tbaa !24  ; 2 uses
  %i.n = fsub float %i.m, %i.f                    ; 5 uses
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %13 = load float, ptr %12, align 4, !tbaa !24   ; 2 uses
  %i.o = fsub float %13, %i.i                     ; 5 uses
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %16 = load float, ptr %15, align 4, !tbaa !24   ; 2 uses
  %i.p = fsub float %16, %i.i                     ; 6 uses
  %i.q = fmul float %i.g, %i.o
  %i.r = fmul float %i.j, %i.l
  %17 = fneg float %i.o
  %18 = fmul float %7, %17                        ; 2 uses
  %i.s = fneg float %i.l
  %i.t = fmul float %i.g, %i.s                    ; 2 uses
  %19 = fmul float %7, %i.n
  %i.u = fneg float %i.n
  %i.v = fmul float %i.j, %i.u                    ; 2 uses
  %20 = load <2 x float>, ptr %2, align 4, !tbaa !24 ; 4 uses
  %21 = extractelement <2 x float> %20, i64 0
  %22 = fsub float %21, %6                        ; 6 uses
  %23 = extractelement <2 x float> %20, i64 1
  %i.w = fsub float %23, %i.f                     ; 6 uses
  %24 = fmul float %i.r, %i.w
  %25 = tail call float @llvm.fmuladd.f32(float %i.q, float %22, float %24)
  %26 = tail call float @llvm.fmuladd.f32(float %18, float %i.w, float %25)
  %27 = tail call float @llvm.fmuladd.f32(float %i.t, float %i.p, float %26)
  %28 = insertelement <2 x float> poison, float %i.k, i64 0
  %29 = insertelement <2 x float> %28, float %i.m, i64 1 ; 2 uses
  %30 = fsub <2 x float> %29, %20                 ; 2 uses
  %31 = insertelement <2 x float> poison, float %13, i64 0
  %32 = insertelement <2 x float> %31, float %i.k, i64 1 ; 2 uses
  %33 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %34 = insertelement <2 x float> %33, float %16, i64 0
  %35 = fsub <2 x float> %32, %34                 ; 2 uses
  %36 = insertelement <2 x float> poison, float %i.c, i64 0 ; 2 uses
  %37 = insertelement <2 x float> %36, float %8, i64 1
  %38 = fsub <2 x float> %37, %29                 ; 2 uses
  %39 = insertelement <2 x float> poison, float %i.h, i64 0 ; 2 uses
  %40 = insertelement <2 x float> %39, float %i.c, i64 1
  %41 = fsub <2 x float> %40, %32                 ; 2 uses
  %42 = extractelement <2 x float> %38, i64 1
  %43 = fneg float %42
  %44 = extractelement <2 x float> %35, i64 0
  %45 = fmul float %44, %43
  %46 = extractelement <2 x float> %30, i64 1
  %47 = extractelement <2 x float> %41, i64 0
  %48 = tail call float @llvm.fmuladd.f32(float %46, float %47, float %45)
  %49 = fneg <2 x float> %41
  %50 = fmul <2 x float> %30, %49
  %51 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %35, <2 x float> %38, <2 x float> %50) ; 2 uses
  %i.x = extractelement <2 x float> %51, i64 0
  %i.y = fmul float %8, %i.x
  %i.z = insertelement <2 x float> %36, float %19, i64 1
  %i.aa = insertelement <2 x float> poison, float %48, i64 0
  %52 = insertelement <2 x float> %i.aa, float %i.p, i64 1
  %53 = insertelement <2 x float> poison, float %i.y, i64 0
  %54 = insertelement <2 x float> %53, float %27, i64 1
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %52, <2 x float> %54)
  %i.ac = insertelement <2 x float> %39, float %i.v, i64 1
  %i.ad = shufflevector <2 x float> %51, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ae = insertelement <2 x float> %i.ad, float %22, i64 1
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ae, <2 x float> %i.ab) ; 2 uses
  %i.ag = extractelement <2 x float> %i.af, i64 1 ; 8 uses
  %i.ah = extractelement <2 x float> %i.af, i64 0
  %i.ai = fmul float %i.ah, %i.ag
  %i.aj = fcmp ole float %i.ai, 0.000000e+00
  %i.ak = fcmp one float %i.ag, 0.000000e+00
  %or.cond101 = and i1 %i.ak, %i.aj
  br i1 %or.cond101, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 0, ptr %i.b, align 4, !tbaa !4
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.an = tail call float @llvm.fmuladd.f32(float %i.g, float %i.o, float %i.v)
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.j, float %i.l, float %18)
  %i.ap = tail call float @llvm.fmuladd.f32(float %7, float %i.n, float %i.t)
  %i.aq = fmul float %i.f, %i.ao
  %i.ar = tail call float @llvm.fmuladd.f32(float %6, float %i.an, float %i.aq)
  %i.as = tail call noundef float @llvm.fmuladd.f32(float %i.i, float %i.ap, float %i.ar)
  %i.at = fmul float %i.ag, %i.as
  %i.au = fcmp ogt float %i.at, 0.000000e+00
  br i1 %i.au, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.av = call noundef float @_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_PfRj(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.aw = load i32, ptr %i.b, align 4, !tbaa !4   ; 2 uses
  %i.ax = shl i32 %i.aw, 1
  %i.ay = and i32 %i.ax, 8
  %i.az = and i32 %i.aw, 3
  %i.ba = or disjoint i32 %i.az, %i.ay
  store i32 %i.ba, ptr %5, align 4, !tbaa !4
  %i.bb = load <2 x float>, ptr %i.a, align 8, !tbaa !24
  store <2 x float> %i.bb, ptr %4, align 4, !tbaa !24
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float 0.000000e+00, ptr %i.bc, align 4, !tbaa !24
  %i.bd = load float, ptr %i.al, align 8, !tbaa !24
  store float %i.bd, ptr %i.am, align 4, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.2 = phi float [ -1.000000e+00, %bb.b ], [ %i.av, %bb.c ] ; 4 uses
  %i.be = fneg float %i.w
  %i.bf = fmul float %i.o, %i.be
  %i.bg = call float @llvm.fmuladd.f32(float %i.n, float %i.p, float %i.bf)
  %i.bh = fneg float %i.p
  %i.bi = fmul float %i.l, %i.bh
  %i.bj = call float @llvm.fmuladd.f32(float %i.o, float %22, float %i.bi)
  %i.bk = fneg float %22
  %i.bl = fmul float %i.n, %i.bk
  %i.bm = call float @llvm.fmuladd.f32(float %i.l, float %i.w, float %i.bl)
  %i.bn = load float, ptr %3, align 4, !tbaa !24
  %i.bo = load float, ptr %i.e, align 4, !tbaa !24
  %i.bp = fmul float %i.bo, %i.bj
  %i.bq = call float @llvm.fmuladd.f32(float %i.bn, float %i.bg, float %i.bp)
  %i.br = load float, ptr %10, align 4, !tbaa !24
  %i.bs = call noundef float @llvm.fmuladd.f32(float %i.br, float %i.bm, float %i.bq)
  %i.bt = fmul float %i.ag, %i.bs
  %i.bu = fcmp ogt float %i.bt, 0.000000e+00
  br i1 %i.bu, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.bv = call noundef float @_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_PfRj(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 2 uses
  %i.bw = fcmp olt float %.2, 0.000000e+00
  %i.bx = fcmp olt float %i.bv, %.2
  %or.cond.1 = or i1 %i.bw, %i.bx
  br i1 %or.cond.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.by = load i32, ptr %i.b, align 4, !tbaa !4   ; 3 uses
  %i.bz = shl i32 %i.by, 1
  %i.ca = and i32 %i.bz, 2
  %i.cb = shl i32 %i.by, 1
  %i.cc = and i32 %i.cb, 4
  %i.cd = shl i32 %i.by, 1
  %i.ce = and i32 %i.cd, 8
  %i.cf = or disjoint i32 %i.cc, %i.ce
  %i.cg = or disjoint i32 %i.cf, %i.ca
  store i32 %i.cg, ptr %5, align 4, !tbaa !4
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ci = load <2 x float>, ptr %i.a, align 8, !tbaa !24
  store <2 x float> %i.ci, ptr %i.ch, align 4, !tbaa !24
  store float 0.000000e+00, ptr %4, align 4, !tbaa !24
  %i.cj = load float, ptr %i.al, align 8, !tbaa !24
  store float %i.cj, ptr %i.am, align 4, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.2.1 = phi float [ %.2, %bb.d ], [ %i.bv, %bb.f ], [ %.2, %bb.e ] ; 4 uses
  %i.ck = fneg float %i.g
  %i.cl = fmul float %i.p, %i.ck
  %i.cm = call float @llvm.fmuladd.f32(float %i.w, float %i.j, float %i.cl)
  %i.cn = fneg float %i.j
  %i.co = fmul float %22, %i.cn
  %i.cp = call float @llvm.fmuladd.f32(float %i.p, float %7, float %i.co)
  %i.cq = fneg float %7
  %i.cr = fmul float %i.w, %i.cq
  %i.cs = call float @llvm.fmuladd.f32(float %22, float %i.g, float %i.cr)
  %i.ct = load float, ptr %3, align 4, !tbaa !24
  %i.cu = load float, ptr %i.e, align 4, !tbaa !24
  %i.cv = fmul float %i.cu, %i.cp
  %i.cw = call float @llvm.fmuladd.f32(float %i.ct, float %i.cm, float %i.cv)
  %i.cx = load float, ptr %10, align 4, !tbaa !24
  %i.cy = call noundef float @llvm.fmuladd.f32(float %i.cx, float %i.cs, float %i.cw)
  %i.cz = fmul float %i.ag, %i.cy
  %i.da = fcmp ogt float %i.cz, 0.000000e+00
  br i1 %i.da, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.db = call noundef float @_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_PfRj(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 2 uses
  %i.dc = fcmp olt float %.2.1, 0.000000e+00
  %i.dd = fcmp olt float %i.db, %.2.1
  %or.cond.2 = or i1 %i.dc, %i.dd
  br i1 %or.cond.2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.de = load i32, ptr %i.b, align 4, !tbaa !4   ; 3 uses
  %i.df = shl i32 %i.de, 2
  %i.dg = and i32 %i.df, 4
  %i.dh = lshr i32 %i.de, 1
  %.lobit = and i32 %i.dh, 1
  %i.di = shl i32 %i.de, 1
  %i.dj = and i32 %i.di, 8
  %i.dk = or disjoint i32 %.lobit, %i.dj
  %i.dl = or disjoint i32 %i.dk, %i.dg
  store i32 %i.dl, ptr %5, align 4, !tbaa !4
  %i.dm = load float, ptr %i.al, align 8, !tbaa !24
  %i.dn = load <2 x float>, ptr %i.a, align 8, !tbaa !24
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.dp = insertelement <4 x float> %i.do, float 0.000000e+00, i64 1
  %i.dq = insertelement <4 x float> %i.dp, float %i.dm, i64 3
  store <4 x float> %i.dq, ptr %4, align 4, !tbaa !24
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.2.2 = phi float [ %.2.1, %bb.g ], [ %i.db, %bb.i ], [ %.2.1, %bb.h ] ; 2 uses
  %i.dr = fcmp olt float %.2.2, 0.000000e+00
  br i1 %i.dr, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 15, ptr %5, align 4, !tbaa !4
  %i.ds = load float, ptr %14, align 4, !tbaa !24 ; 2 uses
  %i.dt = load float, ptr %12, align 4, !tbaa !24 ; 2 uses
  %i.du = fmul float %i.ds, %i.dt
  %i.dv = load float, ptr %3, align 4, !tbaa !24  ; 2 uses
  %i.dw = load float, ptr %15, align 4, !tbaa !24 ; 2 uses
  %i.dx = load float, ptr %1, align 4, !tbaa !24  ; 2 uses
  %i.dy = fmul float %i.dw, %i.dx
  %i.dz = load float, ptr %i.e, align 4, !tbaa !24 ; 2 uses
  %i.ea = fmul float %i.dy, %i.dz
  %i.eb = call float @llvm.fmuladd.f32(float %i.du, float %i.dv, float %i.ea)
  %i.ec = load float, ptr %2, align 4, !tbaa !24  ; 2 uses
  %i.ed = fneg float %i.dt
  %i.ee = fmul float %i.ec, %i.ed
  %i.ef = call float @llvm.fmuladd.f32(float %i.ee, float %i.dz, float %i.eb)
  %i.eg = load float, ptr %10, align 4, !tbaa !24 ; 2 uses
  %i.eh = fneg float %i.dx
  %i.ei = fmul float %i.ds, %i.eh
  %i.ej = call float @llvm.fmuladd.f32(float %i.ei, float %i.eg, float %i.ef)
  %i.ek = load float, ptr %11, align 4, !tbaa !24 ; 2 uses
  %i.el = fmul float %i.ec, %i.ek
  %i.em = call float @llvm.fmuladd.f32(float %i.el, float %i.eg, float %i.ej)
  %i.en = fneg float %i.ek
  %i.eo = fmul float %i.dw, %i.en
  %i.ep = call noundef float @llvm.fmuladd.f32(float %i.eo, float %i.dv, float %i.em)
  %i.eq = fdiv float %i.ep, %i.ag                 ; 2 uses
  store float %i.eq, ptr %4, align 4, !tbaa !24
  %i.er = load float, ptr %i.d, align 4, !tbaa !24 ; 2 uses
  %i.es = load float, ptr %15, align 4, !tbaa !24 ; 2 uses
  %i.et = fmul float %i.er, %i.es
  %i.eu = load float, ptr %3, align 4, !tbaa !24  ; 2 uses
  %i.ev = load float, ptr %9, align 4, !tbaa !24  ; 2 uses
  %i.ew = load float, ptr %2, align 4, !tbaa !24  ; 2 uses
  %i.ex = fmul float %i.ev, %i.ew
  %i.ey = load float, ptr %i.e, align 4, !tbaa !24 ; 2 uses
  %i.ez = fmul float %i.ex, %i.ey
  %i.fa = call float @llvm.fmuladd.f32(float %i.et, float %i.eu, float %i.ez)
  %i.fb = load float, ptr %0, align 4, !tbaa !24  ; 2 uses
  %i.fc = fneg float %i.es
  %i.fd = fmul float %i.fb, %i.fc
  %i.fe = call float @llvm.fmuladd.f32(float %i.fd, float %i.ey, float %i.fa)
  %i.ff = load float, ptr %10, align 4, !tbaa !24 ; 2 uses
  %i.fg = fneg float %i.ew
  %i.fh = fmul float %i.er, %i.fg
  %i.fi = call float @llvm.fmuladd.f32(float %i.fh, float %i.ff, float %i.fe)
  %i.fj = load float, ptr %14, align 4, !tbaa !24 ; 2 uses
  %i.fk = fmul float %i.fb, %i.fj
  %i.fl = call float @llvm.fmuladd.f32(float %i.fk, float %i.ff, float %i.fi)
  %i.fm = fneg float %i.fj
  %i.fn = fmul float %i.ev, %i.fm
  %i.fo = call noundef float @llvm.fmuladd.f32(float %i.fn, float %i.eu, float %i.fl)
  %i.fp = fdiv float %i.fo, %i.ag                 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.fp, ptr %i.fq, align 4, !tbaa !24
  %i.fr = load float, ptr %11, align 4, !tbaa !24 ; 2 uses
  %i.fs = load float, ptr %9, align 4, !tbaa !24  ; 2 uses
  %i.ft = fmul float %i.fr, %i.fs
  %i.fu = load float, ptr %3, align 4, !tbaa !24  ; 2 uses
  %i.fv = load float, ptr %12, align 4, !tbaa !24 ; 2 uses
  %i.fw = load float, ptr %0, align 4, !tbaa !24  ; 2 uses
  %i.fx = fmul float %i.fv, %i.fw
  %i.fy = load float, ptr %i.e, align 4, !tbaa !24 ; 2 uses
  %i.fz = fmul float %i.fx, %i.fy
  %i.ga = call float @llvm.fmuladd.f32(float %i.ft, float %i.fu, float %i.fz)
  %i.gb = load float, ptr %1, align 4, !tbaa !24  ; 2 uses
  %i.gc = fneg float %i.fs
  %i.gd = fmul float %i.gb, %i.gc
  %i.ge = call float @llvm.fmuladd.f32(float %i.gd, float %i.fy, float %i.ga)
  %i.gf = load float, ptr %10, align 4, !tbaa !24 ; 2 uses
  %i.gg = fneg float %i.fw
  %i.gh = fmul float %i.fr, %i.gg
  %i.gi = call float @llvm.fmuladd.f32(float %i.gh, float %i.gf, float %i.ge)
  %i.gj = load float, ptr %i.d, align 4, !tbaa !24 ; 2 uses
  %i.gk = fmul float %i.gb, %i.gj
  %i.gl = call float @llvm.fmuladd.f32(float %i.gk, float %i.gf, float %i.gi)
  %i.gm = fneg float %i.gj
  %i.gn = fmul float %i.fv, %i.gm
  %i.go = call noundef float @llvm.fmuladd.f32(float %i.gn, float %i.fu, float %i.gl)
  %i.gp = fdiv float %i.go, %i.ag                 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.gp, ptr %i.gq, align 4, !tbaa !24
  %i.gr = fadd float %i.eq, %i.fp
  %i.gs = fadd float %i.gr, %i.gp
  %i.gt = fsub float 1.000000e+00, %i.gs
  store float %i.gt, ptr %i.am, align 4, !tbaa !24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.3 = phi float [ 0.000000e+00, %bb.k ], [ %.2.2, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  %.0 = phi float [ %.3, %bb.l ], [ -1.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE(ptr noundef nonnull align 8 dereferenceable(460) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = load float, ptr %1, align 4, !tbaa !24   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !24 ; 3 uses
  %i.d = fmul float %i.c, %i.c
  %i.e = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !24 ; 3 uses
  %i.h = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.e)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.h)
  %i.i = fdiv float 1.000000e+00, %sqrt.i         ; 3 uses
  %i.j = fmul float %i.a, %i.i
  %i.k = fmul float %i.c, %i.i
  %i.l = fmul float %i.g, %i.i
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.j, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.k, i64 1
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.l, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %2, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !25
  %i.m = load ptr, ptr %0, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.unpack.i.i = load i64, ptr %i.n, align 8, !tbaa !33 ; 3 uses
  %.elt2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.unpack3.i.i = load i64, ptr %.elt2.i.i, align 8, !tbaa !33
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %.unpack3.i.i ; 2 uses
  %i.p = and i64 %.unpack.i.i, 1
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.r = getelementptr i8, ptr %i.q, i64 %.unpack.i.i
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %i.t = load ptr, ptr %i.s, align 8, !nosanitize !36
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i

bb.c:                                             ; preds = %bb.a
  %i.u = inttoptr i64 %.unpack.i.i to ptr
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i

_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i: ; preds = %bb.c, %bb.b
  %i.v = phi ptr [ %i.t, %bb.b ], [ %i.u, %bb.c ]
  %i.w = tail call { <2 x float>, <2 x float> } %i.v(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %2), !inline_history !78 ; 2 uses
  %i.x = load float, ptr %2, align 4, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !24
  %i.aa = load float, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !31
  %.unpack.i3.i = load i64, ptr %i.n, align 8, !tbaa !33 ; 3 uses
  %.unpack3.i5.i = load i64, ptr %.elt2.i.i, align 8, !tbaa !33
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %.unpack3.i5.i ; 2 uses
  %i.ae = and i64 %.unpack.i3.i, 1
  %.not.i6.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i6.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !34
  %i.ag = getelementptr i8, ptr %i.af, i64 %.unpack.i3.i
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1
  %i.ai = load ptr, ptr %i.ah, align 8, !nosanitize !36
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3.exit

bb.e:                                             ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i
  %i.aj = inttoptr i64 %.unpack.i3.i to ptr
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3.exit

_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3.exit: ; preds = %bb.d, %bb.e
  %i.ak = phi ptr [ %i.ai, %bb.d ], [ %i.aj, %bb.e ]
  %i.al = fneg float %i.aa                        ; 2 uses
  %i.am = fneg float %i.z                         ; 2 uses
  %i.an = fneg float %i.x                         ; 2 uses
  %i.ao = extractvalue { <2 x float>, <2 x float> } %i.w, 1
  %i.ap = extractvalue { <2 x float>, <2 x float> } %i.w, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load float, ptr %i.as, align 8, !tbaa !24
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load float, ptr %i.av, align 8, !tbaa !24
  %i.ax = load <2 x float>, ptr %i.ar, align 8, !tbaa !24 ; 2 uses
  %i.ay = load <2 x float>, ptr %i.au, align 8, !tbaa !24 ; 2 uses
  %i.az = shufflevector <2 x float> %i.ax, <2 x float> %i.ay, <2 x i32> <i32 1, i32 3>
  %i.ba = insertelement <2 x float> poison, float %i.am, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x float> %i.az, %i.bb
  %i.bd = shufflevector <2 x float> %i.ax, <2 x float> %i.ay, <2 x i32> <i32 0, i32 2>
  %i.be = insertelement <2 x float> poison, float %i.an, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.bf, <2 x float> %i.bc)
  %i.bh = insertelement <2 x float> poison, float %i.at, i64 0
  %i.bi = insertelement <2 x float> %i.bh, float %i.aw, i64 1
  %i.bj = insertelement <2 x float> poison, float %i.al, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bk, <2 x float> %i.bg)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !24
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !24
  %i.bq = fmul float %i.bp, %i.am
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.an, float %i.bq)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !24
  %i.bu = tail call noundef float @llvm.fmuladd.f32(float %i.bt, float %i.al, float %i.br)
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bu, i64 0
  store <2 x float> %i.bl, ptr %3, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %i.bv, align 8
  %i.bw = call { <2 x float>, <2 x float> } %i.ak(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 4 dereferenceable(16) %3), !inline_history !79 ; 2 uses
  %i.bx = extractvalue { <2 x float>, <2 x float> } %i.bw, 0 ; 4 uses
  %i.by = extractvalue { <2 x float>, <2 x float> } %i.bw, 1 ; 2 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %i.bx, i64 0
  %.sroa.0.4.vec.extract.i.i = extractelement <2 x float> %i.bx, i64 1
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !24
  %.sroa.5.8.vec.extract.i.i = extractelement <2 x float> %i.by, i64 0
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ce = load float, ptr %i.cd, align 8, !tbaa !24
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cg = load float, ptr %i.cf, align 8, !tbaa !24
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !24
  %i.cj = fmul float %.sroa.0.4.vec.extract.i.i, %i.ci
  %i.ck = call float @llvm.fmuladd.f32(float %i.cg, float %.sroa.0.0.vec.extract.i.i, float %i.cj)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !24
  %i.cn = call noundef float @llvm.fmuladd.f32(float %i.cm, float %.sroa.5.8.vec.extract.i.i, float %i.ck)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cp = load float, ptr %i.co, align 8, !tbaa !24
  %i.cq = fadd float %i.cp, %i.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.cr = load <2 x float>, ptr %i.aq, align 8, !tbaa !24 ; 2 uses
  %i.cs = load <2 x float>, ptr %i.cc, align 8, !tbaa !24 ; 2 uses
  %i.ct = shufflevector <2 x float> %i.cr, <2 x float> %i.cs, <2 x i32> <i32 1, i32 3>
  %i.cu = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cv = fmul <2 x float> %i.ct, %i.cu
  %i.cw = shufflevector <2 x float> %i.cr, <2 x float> %i.cs, <2 x i32> <i32 0, i32 2>
  %i.cx = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> %i.cx, <2 x float> %i.cv)
  %i.cz = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %i.ce, i64 1
  %i.db = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.da, <2 x float> %i.db, <2 x float> %i.cy)
  %i.dd = load <2 x float>, ptr %i.cb, align 8, !tbaa !24
  %i.de = fadd <2 x float> %i.dd, %i.dc
  %i.df = fsub <2 x float> %i.ap, %i.de
  %.sroa.515.8.vec.extract.i = extractelement <2 x float> %i.ao, i64 0
  %i.dg = fsub float %.sroa.515.8.vec.extract.i, %i.cq
  %.sroa.3.12.vec.insert.i9.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dg, i64 0
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x float> %i.df, ptr %i.dh, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i9.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN12gjkepa2_impl3GJK13EncloseOriginEv(ptr noundef nonnull align 8 dereferenceable(460) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.btVector3, align 8           ; 5 uses
  %2 = alloca %class.btVector3, align 8           ; 5 uses
  %3 = alloca %class.btVector3, align 8           ; 5 uses
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %5 = alloca %class.btVector3, align 8           ; 5 uses
end_hunk_0
