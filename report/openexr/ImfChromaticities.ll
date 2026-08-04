inline.NumInlined: 44
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.Imath_3_2::Matrix44" = type { [4 x [4 x float]] }

$_ZNK9Imath_3_28Matrix44IfE7inverseEv = comdat any

$_ZNK9Imath_3_28Matrix44IfE9gjInverseEv = comdat any

@.str = private unnamed_addr constant [43 x i8] c"Bad chromaticities: white.y cannot be zero\00", align 1
@_ZTISt16invalid_argument = external constant ptr
@.str.1 = private unnamed_addr constant [50 x i8] c"Bad chromaticities: RGBtoXYZ matrix is degenerate\00", align 1

@_ZN7Imf_3_414ChromaticitiesC1ERKN9Imath_3_24Vec2IfEES5_S5_S5_ = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN7Imf_3_414ChromaticitiesC2ERKN9Imath_3_24Vec2IfEES5_S5_S5_

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN7Imf_3_414ChromaticitiesC2ERKN9Imath_3_24Vec2IfEES5_S5_S5_(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load <2 x float>, ptr %1, align 4, !tbaa !8
  store <2 x float> %i.a, ptr %0, align 4, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load <2 x float>, ptr %2, align 4, !tbaa !8
  store <2 x float> %i.c, ptr %i.b, align 4, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load <2 x float>, ptr %3, align 4, !tbaa !8
  store <2 x float> %i.e, ptr %i.d, align 4, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load <2 x float>, ptr %4, align 4, !tbaa !8
  store <2 x float> %i.g, ptr %i.f, align 4, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK7Imf_3_414ChromaticitieseqERKS0_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !10
  %i.b = load float, ptr %1, align 4, !tbaa !10
  %i.c = fcmp oeq float %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4
  %i.h = fcmp oeq float %i.e, %i.g
  %i.i = select i1 %i.c, i1 %i.h, i1 false
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.j, align 4, !tbaa !10
  %i.m = load float, ptr %i.k, align 4, !tbaa !10
  %i.n = fcmp oeq float %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load float, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.r = load float, ptr %i.q, align 4
  %i.s = fcmp oeq float %i.p, %i.r
  %i.t = select i1 %i.n, i1 %i.s, i1 false
  br i1 %i.t, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load float, ptr %i.u, align 4, !tbaa !10
  %i.x = load float, ptr %i.v, align 4, !tbaa !10
  %i.y = fcmp oeq float %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ac = load float, ptr %i.ab, align 4
  %i.ad = fcmp oeq float %i.aa, %i.ac
  %i.ae = select i1 %i.y, i1 %i.ad, i1 false
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load float, ptr %i.af, align 4, !tbaa !10
  %i.ai = load float, ptr %i.ag, align 4, !tbaa !10
  %i.aj = fcmp oeq float %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.al = load float, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.an = load float, ptr %i.am, align 4
  %i.ao = fcmp oeq float %i.al, %i.an
  %i.ap = select i1 %i.aj, i1 %i.ao, i1 false
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.aq = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ %i.ap, %bb.d ]
  ret i1 %i.aq
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK7Imf_3_414ChromaticitiesneERKS0_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !10
  %i.b = load float, ptr %1, align 4, !tbaa !10
  %i.c = fcmp une float %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4
  %i.h = fcmp une float %i.e, %i.g
  %i.i = select i1 %i.c, i1 true, i1 %i.h
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.j, align 4, !tbaa !10
  %i.m = load float, ptr %i.k, align 4, !tbaa !10
  %i.n = fcmp une float %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load float, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.r = load float, ptr %i.q, align 4
  %i.s = fcmp une float %i.p, %i.r
  %i.t = select i1 %i.n, i1 true, i1 %i.s
  br i1 %i.t, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load float, ptr %i.u, align 4, !tbaa !10
  %i.x = load float, ptr %i.v, align 4, !tbaa !10
  %i.y = fcmp une float %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ac = load float, ptr %i.ab, align 4
  %i.ad = fcmp une float %i.aa, %i.ac
  %i.ae = select i1 %i.y, i1 true, i1 %i.ad
  br i1 %i.ae, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load float, ptr %i.af, align 4, !tbaa !10
  %i.ai = load float, ptr %i.ag, align 4, !tbaa !10
  %i.aj = fcmp une float %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.al = load float, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.an = load float, ptr %i.am, align 4
  %i.ao = fcmp une float %i.al, %i.an
  %i.ap = select i1 %i.aj, i1 true, i1 %i.ao
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.aq = phi i1 [ true, %bb.c ], [ true, %bb.b ], [ true, %bb.a ], [ %i.ap, %bb.d ]
  ret i1 %i.aq
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_48RGBtoXYZERKNS_14ChromaticitiesEf(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Imath_3_2::Matrix44") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1, float noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.c = load float, ptr %i.b, align 4, !tbaa !12 ; 4 uses
  %i.d = tail call noundef float @llvm.fabs.f32(float %i.c) ; 2 uses
  %i.e = fcmp ugt float %i.d, 1.000000e+00
  %.pre = load float, ptr %i.a, align 4, !tbaa !14 ; 2 uses
  %.pre105 = fmul float %2, %.pre                 ; 2 uses
  br i1 %i.e, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef float @llvm.fabs.f32(float %.pre105)
  %i.g = fmul nnan float %i.d, f0x7F7FFFFF
  %i.h = fcmp ult float %i.f, %i.g
  br i1 %i.h, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #10 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.k = fdiv float %.pre105, %i.c                ; 3 uses
  %i.l = fsub float 1.000000e+00, %.pre
  %i.m = fsub float %i.l, %i.c
  %i.n = fmul float %2, %i.m
  %i.o = fdiv float %i.n, %i.c
  %3 = load float, ptr %1, align 4, !tbaa !15     ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %4 = load float, ptr %i.q, align 4, !tbaa !16   ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load <2 x float>, ptr %i.t, align 4, !tbaa !8 ; 2 uses
  %i.v = load float, ptr %i.r, align 4, !tbaa !17 ; 4 uses
  %5 = extractelement <2 x float> %i.u, i64 0     ; 6 uses
  %6 = fsub float %5, %4                          ; 2 uses
  %i.w = load float, ptr %i.p, align 4, !tbaa !18 ; 5 uses
  %i.x = load float, ptr %i.s, align 4, !tbaa !19 ; 5 uses
  %7 = fadd float %i.k, %i.o                      ; 2 uses
  %8 = fsub float %4, %i.x                        ; 2 uses
  %9 = fneg float %i.w
  %10 = fsub float %i.x, %5                       ; 2 uses
  %11 = fmul float %i.w, %10
  %12 = tail call float @llvm.fmuladd.f32(float %3, float %8, float %11)
  %13 = tail call float @llvm.fmuladd.f32(float %i.v, float %6, float %12) ; 3 uses
  %14 = fadd float %5, -1.000000e+00
  %15 = insertelement <2 x float> poison, float %i.x, i64 0
  %16 = insertelement <2 x float> %15, float %4, i64 1 ; 2 uses
  %17 = fadd <2 x float> %16, splat (float -1.000000e+00)
  %18 = insertelement <2 x float> poison, float %7, i64 0
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %20 = fmul <2 x float> %16, %19
  %21 = insertelement <2 x float> poison, float %2, i64 0
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> zeroinitializer
  %23 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %22, <2 x float> %17, <2 x float> %20) ; 3 uses
  %24 = fneg <2 x float> %23                      ; 2 uses
  %25 = extractelement <2 x float> %24, i64 1
  %26 = fmul float %i.v, %25
  %27 = fmul float %5, %7
  %28 = tail call float @llvm.fmuladd.f32(float %i.k, float %8, float %26)
  %29 = insertelement <2 x float> poison, float %i.w, i64 0
  %30 = insertelement <2 x float> %29, float %2, i64 1
  %31 = insertelement <2 x float> %23, float %14, i64 1
  %i.y = insertelement <2 x float> poison, float %28, i64 0
  %32 = insertelement <2 x float> %i.y, float %27, i64 1
  %33 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> %31, <2 x float> %32) ; 3 uses
  %i.z = insertelement <2 x float> poison, float %3, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %34 = shufflevector <2 x float> %24, <2 x float> %23, <2 x i32> <i32 3, i32 0>
  %35 = fmul <2 x float> %i.aa, %34
  %36 = insertelement <2 x float> poison, float %i.k, i64 0
  %37 = shufflevector <2 x float> %36, <2 x float> poison, <2 x i32> zeroinitializer
  %38 = insertelement <2 x float> poison, float %6, i64 0
  %39 = insertelement <2 x float> %38, float %10, i64 1
  %40 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %37, <2 x float> %39, <2 x float> %35)
  %41 = insertelement <2 x float> %i.u, float %9, i64 0
  %42 = shufflevector <2 x float> %33, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %43 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %41, <2 x float> %42, <2 x float> %40) ; 3 uses
  %i.ab = tail call noundef float @llvm.fabs.f32(float %13) ; 2 uses
  %i.ac = fcmp olt float %i.ab, 1.000000e+00
  br i1 %i.ac, label %bb.f, label %bb.j

bb.f:                                             ; preds = %._crit_edge
  %i.ad = extractelement <2 x float> %33, i64 0
  %i.ae = tail call noundef float @llvm.fabs.f32(float %i.ad)
  %i.af = fmul nnan float %i.ab, f0x7F7FFFFF      ; 3 uses
  %i.ag = fcmp ult float %i.ae, %i.af
  %i.ah = extractelement <2 x float> %43, i64 0
  %i.ai = tail call float @llvm.fabs.f32(float %i.ah)
  %i.aj = fcmp ult float %i.ai, %i.af
  %or.cond = select i1 %i.ag, i1 %i.aj, i1 false
  %44 = extractelement <2 x float> %43, i64 1
  %i.ak = tail call float @llvm.fabs.f32(float %44)
  %i.al = fcmp ult float %i.ak, %i.af
  %or.cond104 = select i1 %or.cond, i1 %i.al, i1 false
  br i1 %or.cond104, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = tail call ptr @__cxa_allocate_exception(i64 16) #10 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull @.str.1)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.am, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #11
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %._crit_edge
  %45 = extractelement <2 x float> %33, i64 0
  %46 = fdiv float %45, %13                       ; 3 uses
  %i.ao = insertelement <2 x float> poison, float %13, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fdiv <2 x float> %43, %i.ap             ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ay, align 4, !tbaa !8
  %i.az = fmul float %3, %46
  store float %i.az, ptr %0, align 4, !tbaa !8
  %i.ba = fmul float %5, %46
  store float %i.ba, ptr %i.ar, align 4, !tbaa !8
  %i.bb = fsub float 1.000000e+00, %3
  %i.bc = fsub float %i.bb, %5
  %i.bd = fmul float %i.bc, %46
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.bd, ptr %i.be, align 4, !tbaa !8
  %i.bf = extractelement <2 x float> %i.aq, i64 0 ; 3 uses
  %i.bg = fmul float %i.v, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.bg, ptr %i.bh, align 4, !tbaa !8
  %i.bi = fmul float %i.x, %i.bf
  store float %i.bi, ptr %i.as, align 4, !tbaa !8
  %i.bj = fsub float 1.000000e+00, %i.v
  %i.bk = fsub float %i.bj, %i.x
  %i.bl = fmul float %i.bk, %i.bf
  store float %i.bl, ptr %i.au, align 4, !tbaa !8
  %47 = extractelement <2 x float> %i.aq, i64 1   ; 3 uses
  %i.bm = fmul float %i.w, %47
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.bm, ptr %i.bn, align 4, !tbaa !8
  %i.bo = fmul float %4, %47
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.bo, ptr %i.bp, align 4, !tbaa !8
  %i.bq = fsub float 1.000000e+00, %i.w
  %i.br = fsub float %i.bq, %4
  %i.bs = fmul float %i.br, %47
  store float %i.bs, ptr %i.av, align 4, !tbaa !8
  ret void

bb.k:                                             ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.am, %bb.i ], [ %i.i, %bb.e ]
  %.pn = phi { ptr, i32 } [ %i.an, %bb.i ], [ %i.j, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #10
  resume { ptr, i32 } %.pn
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_48XYZtoRGBERKNS_14ChromaticitiesEf(ptr dead_on_unwind noalias writable sret(%"class.Imath_3_2::Matrix44") align 4 %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1, float noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %"class.Imath_3_2::Matrix44", align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @_ZN7Imf_3_48RGBtoXYZERKNS_14ChromaticitiesEf(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Matrix44") align 4 %3, ptr noundef nonnull align 4 dereferenceable(32) %1, float noundef %2)
  call void @_ZNK9Imath_3_28Matrix44IfE7inverseEv(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Matrix44") align 4 %0, ptr noundef nonnull align 4 dereferenceable(64) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK9Imath_3_28Matrix44IfE7inverseEv(ptr dead_on_unwind noalias writable sret(%"class.Imath_3_2::Matrix44") align 4 %0, ptr noundef nonnull align 4 dereferenceable(64) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load float, ptr %i.a, align 4, !tbaa !8
  %i.c = fcmp une float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load float, ptr %i.e, align 4, !tbaa !8
  %i.g = fcmp une float %i.f, 0.000000e+00
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.j = load float, ptr %i.i, align 4, !tbaa !8
  %i.k = fcmp une float %i.j, 0.000000e+00
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.n = load float, ptr %i.m, align 4, !tbaa !8
  %i.o = fcmp une float %i.n, 1.000000e+00
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @_ZNK9Imath_3_28Matrix44IfE9gjInverseEv(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Matrix44") align 4 %0, ptr noundef nonnull align 4 dereferenceable(64) %1) #10
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load float, ptr %1, align 4, !tbaa !8    ; 3 uses
  %i.v = load float, ptr %i.h, align 4, !tbaa !8  ; 3 uses
  %i.w = load float, ptr %i.d, align 4, !tbaa !8  ; 3 uses
  %i.x = load <2 x float>, ptr %i.p, align 4, !tbaa !8 ; 4 uses
  %i.y = load float, ptr %i.s, align 4, !tbaa !8  ; 2 uses
  %i.z = fneg float %i.y                          ; 2 uses
  %i.aa = load <2 x float>, ptr %i.t, align 4, !tbaa !8 ; 5 uses
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.ac = load <2 x float>, ptr %i.r, align 4, !tbaa !8 ; 5 uses
  %i.ad = load float, ptr %i.q, align 4, !tbaa !8 ; 2 uses
  %i.ae = shufflevector <2 x float> %i.ac, <2 x float> %i.aa, <2 x i32> <i32 1, i32 3>
  %i.af = fneg <2 x float> %i.ae                  ; 3 uses
  %i.ag = shufflevector <2 x float> %i.aa, <2 x float> %i.x, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ah = fmul <2 x float> %i.ag, %i.af
  %i.ai = extractelement <2 x float> %i.ac, i64 0
  %i.aj = shufflevector <2 x float> %i.ac, <2 x float> %i.x, <2 x i32> <i32 0, i32 3>
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.aj, <2 x float> %i.ah) ; 2 uses
  %i.al = extractelement <2 x float> %i.x, i64 0
  %i.am = insertelement <2 x float> poison, float %i.v, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.u, i64 1 ; 2 uses
  %i.ao = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ap = insertelement <2 x float> %i.ao, float %i.z, i64 1
  %i.aq = fmul <2 x float> %i.an, %i.ap
  %i.ar = extractelement <2 x float> %i.aa, i64 1
  %i.as = insertelement <2 x float> poison, float %i.u, i64 0
  %i.at = insertelement <2 x float> %i.as, float %i.w, i64 1 ; 2 uses
  %i.au = insertelement <2 x float> %i.aa, float %i.ad, i64 0
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.au, <2 x float> %i.aq) ; 2 uses
  %i.aw = shufflevector <2 x float> %i.ac, <2 x float> %i.af, <2 x i32> <i32 0, i32 2>
  %i.ax = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ay = insertelement <2 x float> %i.ax, float %i.w, i64 1
  %i.az = fmul <2 x float> %i.aw, %i.ay
  %i.ba = insertelement <2 x float> %i.x, float %i.v, i64 1
  %i.bb = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.y, i64 1
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.bc, <2 x float> %i.az) ; 4 uses
  %i.be = fneg float %i.al
  %i.bf = shufflevector <2 x float> %i.ac, <2 x float> %i.ab, <2 x i32> <i32 0, i32 3>
  %i.bg = fneg <2 x float> %i.bf
  %i.bh = fmul <2 x float> %i.at, %i.bg
  %i.bi = fmul float %i.v, %i.be
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.ag, <2 x float> %i.bh) ; 3 uses
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.w, float %i.ai, float %i.bi) ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.ab, %i.bd
  %i.bl = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bm = extractelement <2 x float> %i.bd, i64 0
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.u, float %i.bm, float %i.bl)
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.bk, float %i.bn) ; 4 uses
  %i.bp = fcmp ogt float %i.bo, 0.000000e+00
  %i.bq = fneg float %i.bo
  %i.br = select i1 %i.bp, float %i.bo, float %i.bq ; 2 uses
  %i.bs = fcmp ult float %i.br, 1.000000e+00
  br i1 %i.bs, label %.preheader, label %.critedge29

.preheader:                                       ; preds = %bb.f
  %i.bt = fmul float %i.br, f0x7E800000           ; 2 uses
  %i.bu = shufflevector <2 x float> %i.av, <2 x float> %i.bj, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.bv = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bw = shufflevector <4 x float> %i.bv, <4 x float> %i.bu, <8 x i32> <i32 poison, i32 0, i32 1, i32 poison, i32 4, i32 5, i32 poison, i32 7>
  %i.bx = shufflevector <2 x float> %i.bd, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.by = shufflevector <8 x float> %i.bx, <8 x float> %i.bw, <8 x i32> <i32 0, i32 9, i32 10, i32 3, i32 12, i32 13, i32 poison, i32 15>
  %i.bz = insertelement <8 x float> %i.by, float %i.bk, i64 6
  %i.ca = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bz)
  %i.cb = insertelement <8 x float> poison, float %i.bt, i64 0
  %i.cc = shufflevector <8 x float> %i.cb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cd = fcmp ogt <8 x float> %i.cc, %i.ca
  %i.ce = extractelement <2 x float> %i.bj, i64 1
  %i.cf = tail call float @llvm.fabs.f32(float %i.ce)
  %i.cg = fcmp ogt float %i.bt, %i.cf
  %i.ch = freeze <8 x i1> %i.cd
  %i.ci = bitcast <8 x i1> %i.ch to i8
  %i.cj = icmp eq i8 %i.ci, -1
  %op.rdx = select i1 %i.cj, i1 %i.cg, i1 false
  br i1 %op.rdx, label %.critedge29, label %bb.g

bb.g:                                             ; preds = %.preheader
  store float 1.000000e+00, ptr %0, align 4, !tbaa !8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cl, align 4, !tbaa !8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cn, align 4, !tbaa !8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.co, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cp, align 4, !tbaa !8
  br label %bb.h

.critedge29:                                      ; preds = %.preheader, %bb.f
  %i.cq = load float, ptr %i.l, align 4, !tbaa !8
  %i.cr = fneg float %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !8
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !8
  %i.cw = fneg float %i.cv
  %i.cx = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cy = insertelement <4 x float> %i.cx, float 0.000000e+00, i64 3
  %i.cz = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.da = shufflevector <4 x float> %i.cy, <4 x float> %i.cz, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.db = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.bo, i64 0
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 3 uses
  %i.dd = fdiv <4 x float> %i.da, %i.dc           ; 2 uses
  store <4 x float> %i.dd, ptr %0, align 4, !tbaa !8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.df = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.cx, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.dg = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dh = shufflevector <4 x float> %i.df, <4 x float> %i.dg, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.di = fdiv <4 x float> %i.dh, %i.dc           ; 3 uses
  store <4 x float> %i.di, ptr %i.de, align 4, !tbaa !8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dk = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bk, i64 0
  %i.dl = shufflevector <2 x float> %i.bj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dm = shufflevector <4 x float> %i.dk, <4 x float> %i.dl, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
end_hunk_0
begin_hunk_1_@_ZNK9Imath_3_28Matrix44IfE9gjInverseEv:.lr.ph.preheader
  store float 1.000000e+00, ptr %i.jk, align 4, !tbaa !8
  br label %bb.d

.preheader110.1:                                  ; preds = %.preheader110.lr.ph
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.jp = load <4 x float>, ptr %i.gl, align 16, !tbaa !8
  %i.jq = insertelement <4 x float> poison, float %i.gn, i64 0
  %i.jr = shufflevector <4 x float> %i.jq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.js = fdiv <4 x float> %i.jp, %i.jr
  store <4 x float> %i.js, ptr %i.gl, align 16, !tbaa !8
  %i.jt = load <4 x float>, ptr %i.jl, align 16, !tbaa !8
  %i.ju = fdiv <4 x float> %i.jt, %i.jr
  store <4 x float> %i.ju, ptr %i.jl, align 16, !tbaa !8
  %i.jv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jw = load float, ptr %i.jv, align 8, !tbaa !8
  %i.jx = fneg float %i.jw                        ; 5 uses
  %i.jy = load float, ptr %i.gl, align 16, !tbaa !8
  %i.jz = load float, ptr %3, align 16, !tbaa !8
  %i.ka = tail call float @llvm.fmuladd.f32(float %i.jx, float %i.jy, float %i.jz)
  store float %i.ka, ptr %3, align 16, !tbaa !8
  %i.kb = load float, ptr %i.jm, align 4, !tbaa !8
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !8
  %i.ke = tail call float @llvm.fmuladd.f32(float %i.jx, float %i.kb, float %i.kd)
  store float %i.ke, ptr %i.kc, align 4, !tbaa !8
  %i.kf = load float, ptr %i.jn, align 8, !tbaa !8
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.kh = load float, ptr %i.kg, align 8, !tbaa !8
  %i.ki = tail call float @llvm.fmuladd.f32(float %i.jx, float %i.kf, float %i.kh)
  store float %i.ki, ptr %i.kg, align 8, !tbaa !8
  %i.kj = load float, ptr %i.jo, align 4, !tbaa !8
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !8
  %i.km = tail call float @llvm.fmuladd.f32(float %i.jx, float %i.kj, float %i.kl)
  store float %i.km, ptr %i.kk, align 4, !tbaa !8
  %i.kn = load <4 x float>, ptr %i.jl, align 16, !tbaa !8
  %i.ko = load <4 x float>, ptr %2, align 16, !tbaa !8
  %i.kp = insertelement <4 x float> poison, float %i.jx, i64 0
  %i.kq = shufflevector <4 x float> %i.kp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kq, <4 x float> %i.kn, <4 x float> %i.ko)
  store <4 x float> %i.kr, ptr %2, align 16, !tbaa !8
  %i.ks = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ku = load float, ptr %i.kt, align 8, !tbaa !8
  %i.kv = fneg float %i.ku                        ; 5 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.kx = load float, ptr %i.gl, align 16, !tbaa !8
  %i.ky = load float, ptr %i.ks, align 16, !tbaa !8
  %i.kz = tail call float @llvm.fmuladd.f32(float %i.kv, float %i.kx, float %i.ky)
  store float %i.kz, ptr %i.ks, align 16, !tbaa !8
  %i.la = load float, ptr %i.jm, align 4, !tbaa !8
  %i.lb = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !8
  %i.ld = tail call float @llvm.fmuladd.f32(float %i.kv, float %i.la, float %i.lc)
  store float %i.ld, ptr %i.lb, align 4, !tbaa !8
  %i.le = load float, ptr %i.jn, align 8, !tbaa !8
  %i.lf = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.lg = load float, ptr %i.lf, align 8, !tbaa !8
  %i.lh = tail call float @llvm.fmuladd.f32(float %i.kv, float %i.le, float %i.lg)
  store float %i.lh, ptr %i.lf, align 8, !tbaa !8
  %i.li = load float, ptr %i.jo, align 4, !tbaa !8
  %i.lj = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !8
  %i.ll = tail call float @llvm.fmuladd.f32(float %i.kv, float %i.li, float %i.lk)
  store float %i.ll, ptr %i.lj, align 4, !tbaa !8
  %i.lm = load <4 x float>, ptr %i.jl, align 16, !tbaa !8
  %i.ln = load <4 x float>, ptr %i.kw, align 16, !tbaa !8
  %i.lo = insertelement <4 x float> poison, float %i.kv, i64 0
  %i.lp = shufflevector <4 x float> %i.lo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lp, <4 x float> %i.lm, <4 x float> %i.ln)
  store <4 x float> %i.lq, ptr %i.kw, align 16, !tbaa !8
  %i.lr = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !8 ; 2 uses
  %i.lu = fcmp une float %i.lt, 0.000000e+00
  br i1 %i.lu, label %.preheader110.2, label %.thread109

.preheader110.2:                                  ; preds = %.preheader110.1
  %i.lv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.lx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ly = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.lz = load <4 x float>, ptr %i.lr, align 16, !tbaa !8
  %i.ma = insertelement <4 x float> poison, float %i.lt, i64 0
  %i.mb = shufflevector <4 x float> %i.ma, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.mc = fdiv <4 x float> %i.lz, %i.mb
  store <4 x float> %i.mc, ptr %i.lr, align 16, !tbaa !8
  %i.md = load <4 x float>, ptr %i.lv, align 16, !tbaa !8
  %i.me = fdiv <4 x float> %i.md, %i.mb
  store <4 x float> %i.me, ptr %i.lv, align 16, !tbaa !8
  %i.mf = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !8
  %i.mh = fneg float %i.mg                        ; 5 uses
  %i.mi = load float, ptr %i.lr, align 16, !tbaa !8
  %i.mj = load float, ptr %3, align 16, !tbaa !8
  %i.mk = tail call float @llvm.fmuladd.f32(float %i.mh, float %i.mi, float %i.mj)
  store float %i.mk, ptr %3, align 16, !tbaa !8
  %i.ml = load float, ptr %i.lw, align 4, !tbaa !8
  %i.mm = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !8
  %i.mo = tail call float @llvm.fmuladd.f32(float %i.mh, float %i.ml, float %i.mn)
  store float %i.mo, ptr %i.mm, align 4, !tbaa !8
  %i.mp = load float, ptr %i.lx, align 8, !tbaa !8
  %i.mq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.mr = load float, ptr %i.mq, align 8, !tbaa !8
  %i.ms = tail call float @llvm.fmuladd.f32(float %i.mh, float %i.mp, float %i.mr)
  store float %i.ms, ptr %i.mq, align 8, !tbaa !8
  %i.mt = load float, ptr %i.ly, align 4, !tbaa !8
  %i.mu = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !8
  %i.mw = tail call float @llvm.fmuladd.f32(float %i.mh, float %i.mt, float %i.mv)
  store float %i.mw, ptr %i.mu, align 4, !tbaa !8
  %i.mx = load <4 x float>, ptr %i.lv, align 16, !tbaa !8
  %i.my = load <4 x float>, ptr %2, align 16, !tbaa !8
  %i.mz = insertelement <4 x float> poison, float %i.mh, i64 0
  %i.na = shufflevector <4 x float> %i.mz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.na, <4 x float> %i.mx, <4 x float> %i.my)
  store <4 x float> %i.nb, ptr %2, align 16, !tbaa !8
  %i.nc = load float, ptr %3, align 16, !tbaa !8  ; 2 uses
  %i.nd = fcmp une float %i.nc, 0.000000e+00
  br i1 %i.nd, label %.preheader110.3, label %.thread109

.preheader110.3:                                  ; preds = %.preheader110.2
  %i.ne = load <4 x float>, ptr %3, align 16, !tbaa !8
  %i.nf = insertelement <4 x float> poison, float %i.nc, i64 0
  %i.ng = shufflevector <4 x float> %i.nf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.nh = fdiv <4 x float> %i.ne, %i.ng
  store <4 x float> %i.nh, ptr %3, align 16, !tbaa !8
  %i.ni = load <4 x float>, ptr %2, align 16, !tbaa !8
  %i.nj = fdiv <4 x float> %i.ni, %i.ng
  store <4 x float> %i.nj, ptr %2, align 16, !tbaa !8
  %i.nk = load <4 x float>, ptr %2, align 16, !tbaa !8
  store <4 x float> %i.nk, ptr %0, align 4, !tbaa !8
  %i.nl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nn = load <4 x float>, ptr %i.nl, align 16, !tbaa !8
  store <4 x float> %i.nn, ptr %i.nm, align 4, !tbaa !8
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.nq = load <4 x float>, ptr %i.no, align 16, !tbaa !8
  store <4 x float> %i.nq, ptr %i.np, align 4, !tbaa !8
  %i.nr = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.nt = load <4 x float>, ptr %i.nr, align 16, !tbaa !8
  store <4 x float> %i.nt, ptr %i.ns, align 4, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %.thread109, %.thread, %.preheader110.3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !6, i64 0}
!10 = !{!11, !9, i64 0}
!11 = !{!"_ZTSN9Imath_3_24Vec2IfEE", !9, i64 0, !9, i64 4}
!12 = !{!13, !9, i64 28}
!13 = !{!"_ZTSN7Imf_3_414ChromaticitiesE", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!14 = !{!13, !9, i64 24}
!15 = !{!13, !9, i64 0}
!16 = !{!13, !9, i64 20}
!17 = !{!13, !9, i64 8}
!18 = !{!13, !9, i64 16}
!19 = !{!13, !9, i64 12}
end_hunk_1
