Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/ImfChromaticities?download=true
inline.NumInlined: 44
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"class.Imath_3_1::Matrix44" = type { [4 x [4 x float]] }

@.str = private unnamed_addr constant [43 x i8] c"Bad chromaticities: white.y cannot be zero\00", align 1
@_ZTISt16invalid_argument = external constant ptr
@.str.1 = private unnamed_addr constant [50 x i8] c"Bad chromaticities: RGBtoXYZ matrix is degenerate\00", align 1

@_ZN27OpenImageIO_v3_1_Imf__3_3_514ChromaticitiesC1ERKN9Imath_3_14Vec2IfEES5_S5_S5_ = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_514ChromaticitiesC2ERKN9Imath_3_14Vec2IfEES5_S5_S5_

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_514ChromaticitiesC2ERKN9Imath_3_14Vec2IfEES5_S5_S5_(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4) unnamed_addr #0 align 2 {
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
define noundef zeroext i1 @_ZNK27OpenImageIO_v3_1_Imf__3_3_514ChromaticitieseqERKS0_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
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
define noundef zeroext i1 @_ZNK27OpenImageIO_v3_1_Imf__3_3_514ChromaticitiesneERKS0_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
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
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_58RGBtoXYZERKNS_14ChromaticitiesEf(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Imath_3_1::Matrix44") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1, float noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.c = load float, ptr %i.b, align 4, !tbaa !12 ; 4 uses
  %i.d = tail call noundef float @llvm.fabs.f32(float %i.c) ; 2 uses
  %i.e = fcmp ugt float %i.d, 1.000000e+00
  %.pre = load float, ptr %i.a, align 4, !tbaa !13 ; 2 uses
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
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.r = load float, ptr %i.q, align 4, !tbaa !14 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  %3 = load float, ptr %i.p, align 4, !tbaa !15   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %4 = fneg float %3
  %i.v = load float, ptr %1, align 4, !tbaa !16   ; 4 uses
  %5 = load float, ptr %i.u, align 4, !tbaa !17   ; 6 uses
  %i.w = load <2 x float>, ptr %i.s, align 4, !tbaa !8 ; 4 uses
  %i.x = load float, ptr %i.t, align 4, !tbaa !18 ; 4 uses
  %i.y = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.z = insertelement <2 x float> %i.y, float %5, i64 1
  %i.aa = insertelement <2 x float> poison, float %5, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.r, i64 1
  %i.ac = fsub <2 x float> %i.z, %i.ab            ; 3 uses
  %i.ad = extractelement <2 x float> %i.ac, i64 0
  %i.ae = fmul float %3, %i.ad
  %6 = fsub float %i.r, %i.x                      ; 2 uses
  %i.af = fadd float %i.k, %i.o                   ; 2 uses
  %i.ag = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %i.r, i64 1 ; 2 uses
  %i.ai = fadd <2 x float> %i.ah, splat (float -1.000000e+00)
  %i.aj = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x float> %i.ah, %i.ak
  %i.am = insertelement <2 x float> poison, float %2, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.ai, <2 x float> %i.al) ; 3 uses
  %i.ap = fneg <2 x float> %i.ao                  ; 2 uses
  %7 = extractelement <2 x float> %i.w, i64 0     ; 3 uses
  %shift = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.w, %shift
  %8 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %9 = tail call float @llvm.fmuladd.f32(float %i.k, float %6, float %8)
  %i.aq = extractelement <2 x float> %i.ao, i64 0
  %i.ar = tail call float @llvm.fmuladd.f32(float %3, float %i.aq, float %9) ; 2 uses
  %10 = fadd float %5, -1.000000e+00
  %11 = fmul float %5, %i.af
  %12 = tail call float @llvm.fmuladd.f32(float %i.v, float %6, float %i.ae)
  %13 = extractelement <2 x float> %i.ac, i64 1
  %14 = tail call float @llvm.fmuladd.f32(float %7, float %13, float %12) ; 3 uses
  %15 = tail call float @llvm.fmuladd.f32(float %2, float %10, float %11)
  %i.as = insertelement <2 x float> poison, float %i.v, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %16 = shufflevector <2 x float> %i.ap, <2 x float> %i.ao, <2 x i32> <i32 0, i32 3>
  %i.au = fmul <2 x float> %i.at, %16
  %i.av = insertelement <2 x float> poison, float %i.k, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.ac, <2 x float> %i.au)
  %17 = insertelement <2 x float> %i.w, float %4, i64 1
  %i.ay = insertelement <2 x float> poison, float %15, i64 0
  %18 = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %17, <2 x float> %18, <2 x float> %i.ax) ; 3 uses
  %i.ba = tail call noundef float @llvm.fabs.f32(float %14) ; 2 uses
  %i.bb = fcmp olt float %i.ba, 1.000000e+00
  br i1 %i.bb, label %bb.f, label %bb.j

bb.f:                                             ; preds = %._crit_edge
  %i.bc = tail call noundef float @llvm.fabs.f32(float %i.ar)
  %i.bd = fmul nnan float %i.ba, f0x7F7FFFFF      ; 3 uses
  %i.be = fcmp ult float %i.bc, %i.bd
  %i.bf = extractelement <2 x float> %i.az, i64 1
  %i.bg = tail call float @llvm.fabs.f32(float %i.bf)
  %i.bh = fcmp ult float %i.bg, %i.bd
  %or.cond = select i1 %i.be, i1 %i.bh, i1 false
  %i.bi = extractelement <2 x float> %i.az, i64 0
  %i.bj = tail call float @llvm.fabs.f32(float %i.bi)
  %i.bk = fcmp ult float %i.bj, %i.bd
  %or.cond104 = select i1 %or.cond, i1 %i.bk, i1 false
  br i1 %or.cond104, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = tail call ptr @__cxa_allocate_exception(i64 16) #10 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull @.str.1)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.bl, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #11
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %._crit_edge
  %i.bn = fdiv float %i.ar, %14                   ; 3 uses
  %i.bo = insertelement <2 x float> poison, float %14, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fdiv <2 x float> %i.az, %i.bp           ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.by, align 4, !tbaa !8
  %i.bz = fmul float %i.v, %i.bn
  store float %i.bz, ptr %0, align 4, !tbaa !8
  %i.ca = fmul float %5, %i.bn
  store float %i.ca, ptr %i.br, align 4, !tbaa !8
  %i.cb = fsub float 1.000000e+00, %i.v
  %i.cc = fsub float %i.cb, %5
  %i.cd = fmul float %i.cc, %i.bn
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.cd, ptr %i.ce, align 4, !tbaa !8
  %i.cf = extractelement <2 x float> %i.bq, i64 1 ; 3 uses
  %i.cg = fmul float %7, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.cg, ptr %i.ch, align 4, !tbaa !8
  %i.ci = fmul float %i.x, %i.cf
  store float %i.ci, ptr %i.bs, align 4, !tbaa !8
  %i.cj = fsub float 1.000000e+00, %7
  %i.ck = fsub float %i.cj, %i.x
  %i.cl = fmul float %i.ck, %i.cf
  store float %i.cl, ptr %i.bu, align 4, !tbaa !8
  %i.cm = extractelement <2 x float> %i.bq, i64 0 ; 3 uses
  %i.cn = fmul float %3, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.cn, ptr %i.co, align 4, !tbaa !8
  %i.cp = fmul float %i.r, %i.cm
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.cp, ptr %i.cq, align 4, !tbaa !8
  %i.cr = fsub float 1.000000e+00, %3
  %i.cs = fsub float %i.cr, %i.r
  %i.ct = fmul float %i.cs, %i.cm
  store float %i.ct, ptr %i.bv, align 4, !tbaa !8
  ret void

bb.k:                                             ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.bl, %bb.i ], [ %i.i, %bb.e ]
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.i ], [ %i.j, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #10
  resume { ptr, i32 } %.pn
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_58XYZtoRGBERKNS_14ChromaticitiesEf(ptr dead_on_unwind noalias writable sret(%"class.Imath_3_1::Matrix44") align 4 %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1, float noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %"class.Imath_3_1::Matrix44", align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_58RGBtoXYZERKNS_14ChromaticitiesEf(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_1::Matrix44") align 4 %3, ptr noundef nonnull align 4 dereferenceable(32) %1, float noundef %2)
  call void @_ZNK9Imath_3_18Matrix44IfE7inverseEv(ptr dead_on_unwind writable sret(%"class.Imath_3_1::Matrix44") align 4 %0, ptr noundef nonnull align 4 dereferenceable(64) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK9Imath_3_18Matrix44IfE7inverseEv(ptr dead_on_unwind noalias writable sret(%"class.Imath_3_1::Matrix44") align 4 %0, ptr noundef nonnull align 4 dereferenceable(64) %1) local_unnamed_addr #8 align 2 {
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
  tail call void @_ZNK9Imath_3_18Matrix44IfE9gjInverseEv(ptr dead_on_unwind writable sret(%"class.Imath_3_1::Matrix44") align 4 %0, ptr noundef nonnull align 4 dereferenceable(64) %1) #10
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load float, ptr %1, align 4, !tbaa !8    ; 3 uses
  %i.v = load float, ptr %i.h, align 4, !tbaa !8  ; 3 uses
  %2 = load float, ptr %i.d, align 4, !tbaa !8    ; 3 uses
  %i.w = load <2 x float>, ptr %i.p, align 4, !tbaa !8 ; 4 uses
  %i.x = load float, ptr %i.s, align 4, !tbaa !8  ; 2 uses
  %i.y = fneg float %i.x                          ; 2 uses
  %i.z = load <2 x float>, ptr %i.t, align 4, !tbaa !8 ; 5 uses
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.ab = load <2 x float>, ptr %i.r, align 4, !tbaa !8 ; 5 uses
  %i.ac = load float, ptr %i.q, align 4, !tbaa !8 ; 2 uses
  %i.ad = shufflevector <2 x float> %i.ab, <2 x float> %i.z, <2 x i32> <i32 1, i32 3>
  %i.ae = fneg <2 x float> %i.ad                  ; 3 uses
  %3 = shufflevector <2 x float> %i.z, <2 x float> %i.w, <2 x i32> <i32 0, i32 2> ; 2 uses
  %4 = fmul <2 x float> %3, %i.ae
  %5 = extractelement <2 x float> %i.ab, i64 0
  %i.af = shufflevector <2 x float> %i.ab, <2 x float> %i.w, <2 x i32> <i32 0, i32 3>
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.af, <2 x float> %4) ; 2 uses
  %6 = extractelement <2 x float> %i.w, i64 0
  %7 = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ah = insertelement <2 x float> %7, float %i.u, i64 1 ; 2 uses
  %8 = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ai = insertelement <2 x float> %8, float %i.y, i64 1
  %i.aj = fmul <2 x float> %i.ah, %i.ai
  %9 = extractelement <2 x float> %i.z, i64 1
  %i.ak = insertelement <2 x float> poison, float %i.u, i64 0
  %i.al = insertelement <2 x float> %i.ak, float %2, i64 1 ; 2 uses
  %i.am = insertelement <2 x float> %i.z, float %i.ac, i64 0
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.am, <2 x float> %i.aj) ; 2 uses
  %10 = shufflevector <2 x float> %i.ab, <2 x float> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.ao = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ap = insertelement <2 x float> %i.ao, float %2, i64 1
  %i.aq = fmul <2 x float> %10, %i.ap
  %i.ar = insertelement <2 x float> %i.w, float %i.v, i64 1
  %i.as = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.at = insertelement <2 x float> %i.as, float %i.x, i64 1
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.at, <2 x float> %i.aq) ; 4 uses
  %i.av = fneg float %6
  %11 = shufflevector <2 x float> %i.ab, <2 x float> %i.aa, <2 x i32> <i32 0, i32 3>
  %12 = fneg <2 x float> %11
  %13 = fmul <2 x float> %i.al, %12
  %14 = fmul float %i.v, %i.av
  %15 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %3, <2 x float> %13) ; 3 uses
  %16 = tail call float @llvm.fmuladd.f32(float %2, float %5, float %14) ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.aa, %i.au
  %i.aw = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ax = extractelement <2 x float> %i.au, i64 0
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.u, float %i.ax, float %i.aw)
  %i.az = tail call float @llvm.fmuladd.f32(float %9, float %16, float %i.ay) ; 4 uses
  %i.ba = fcmp ogt float %i.az, 0.000000e+00
  %i.bb = fneg float %i.az
  %i.bc = select i1 %i.ba, float %i.az, float %i.bb ; 2 uses
  %i.bd = fcmp ult float %i.bc, 1.000000e+00
  br i1 %i.bd, label %.preheader, label %.critedge29

.preheader:                                       ; preds = %bb.f
  %i.be = fmul float %i.bc, f0x7E800000           ; 2 uses
  %i.bf = shufflevector <2 x float> %i.an, <2 x float> %15, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.bg = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> %i.bf, <8 x i32> <i32 poison, i32 0, i32 1, i32 poison, i32 4, i32 5, i32 poison, i32 7>
  %i.bi = shufflevector <2 x float> %i.au, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bj = shufflevector <8 x float> %i.bi, <8 x float> %i.bh, <8 x i32> <i32 0, i32 9, i32 10, i32 3, i32 12, i32 13, i32 poison, i32 15>
  %i.bk = insertelement <8 x float> %i.bj, float %16, i64 6
  %i.bl = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bk)
  %i.bm = insertelement <8 x float> poison, float %i.be, i64 0
  %i.bn = shufflevector <8 x float> %i.bm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bo = fcmp ogt <8 x float> %i.bn, %i.bl
  %i.bp = extractelement <2 x float> %15, i64 1
  %i.bq = tail call float @llvm.fabs.f32(float %i.bp)
  %i.br = fcmp ogt float %i.be, %i.bq
  %i.bs = freeze <8 x i1> %i.bo
  %i.bt = bitcast <8 x i1> %i.bs to i8
  %i.bu = icmp eq i8 %i.bt, -1
  %op.rdx = select i1 %i.bu, i1 %i.br, i1 false
  br i1 %op.rdx, label %.critedge29, label %bb.g

bb.g:                                             ; preds = %.preheader
  store float 1.000000e+00, ptr %0, align 4, !tbaa !8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bw, align 4, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.by, align 4, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ca, align 4, !tbaa !8
  br label %bb.h

.critedge29:                                      ; preds = %.preheader, %bb.f
  %i.cb = load float, ptr %i.l, align 4, !tbaa !8
  %i.cc = fneg float %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !8
  %i.ch = fneg float %i.cg
  %i.ci = shufflevector <2 x float> %i.au, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cj = insertelement <4 x float> %i.ci, float 0.000000e+00, i64 3
  %i.ck = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cl = shufflevector <4 x float> %i.cj, <4 x float> %i.ck, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.cm = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.az, i64 0
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 3 uses
  %i.co = fdiv <4 x float> %i.cl, %i.cn           ; 2 uses
  store <4 x float> %i.co, ptr %0, align 4, !tbaa !8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cq = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.ci, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.cr = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cs = shufflevector <4 x float> %i.cq, <4 x float> %i.cr, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ct = fdiv <4 x float> %i.cs, %i.cn           ; 3 uses
  store <4 x float> %i.ct, ptr %i.cp, align 4, !tbaa !8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cv = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %16, i64 0
  %i.cw = shufflevector <2 x float> %15, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cx = shufflevector <4 x float> %i.cv, <4 x float> %i.cw, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.cy = fdiv <4 x float> %i.cx, %i.cn           ; 2 uses
  store <4 x float> %i.cy, ptr %i.cu, align 4, !tbaa !8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.da = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ce, i64 0
  %i.db = shufflevector <4 x float> %i.da, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dc = fneg <4 x float> %i.ct
  %i.dd = insertelement <4 x float> %i.dc, float 1.000000e+00, i64 3
  %i.de = fneg <4 x float> %i.ct
  %i.df = shufflevector <4 x float> %i.de, <4 x float> %i.dd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dg = fmul <4 x float> %i.db, %i.df
  %i.dh = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.cc, i64 0
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dj = insertelement <4 x float> %i.co, float -0.000000e+00, i64 3
  %i.dk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.di, <4 x float> %i.dj, <4 x float> %i.dg)
  %i.dl = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ch, i64 0
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dn = insertelement <4 x float> %i.cy, float -0.000000e+00, i64 3
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dm, <4 x float> %i.dn, <4 x float> %i.dk)
  store <4 x float> %i.do, ptr %i.cz, align 4, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %.critedge29, %bb.g, %bb.e
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK9Imath_3_18Matrix44IfE9gjInverseEv(ptr dead_on_unwind noalias writable sret(%"class.Imath_3_1::Matrix44") align 4 %0, ptr noundef nonnull align 4 dereferenceable(64) %1) local_unnamed_addr #8 align 2 {
.lr.ph.preheader:
  %2 = alloca %"class.Imath_3_1::Matrix44", align 16 ; 45 uses
  %3 = alloca %"class.Imath_3_1::Matrix44", align 16 ; 88 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store float 1.000000e+00, ptr %2, align 16, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.g = load <4 x float>, ptr %1, align 4, !tbaa !8
  store <4 x float> %i.g, ptr %3, align 16, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load <4 x float>, ptr %i.h, align 4, !tbaa !8
  store <4 x float> %i.j, ptr %i.i, align 16, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.m = load <4 x float>, ptr %i.k, align 4, !tbaa !8
  store <4 x float> %i.m, ptr %i.l, align 16, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.p = load <4 x float>, ptr %i.n, align 4, !tbaa !8
  store <4 x float> %i.p, ptr %i.o, align 16, !tbaa !8
  %gep.1 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = load float, ptr %gep.1, align 16, !tbaa !8 ; 3 uses
  %i.r = fcmp olt float %i.q, 0.000000e+00
  %i.s = fneg float %i.q
  %.094.1 = select i1 %i.r, float %i.s, float %i.q ; 2 uses
  %gep = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = load float, ptr %gep, align 16, !tbaa !8 ; 3 uses
  %i.u = fcmp olt float %i.t, 0.000000e+00
  %i.v = fneg float %i.t
  %.094 = select i1 %i.u, float %i.v, float %i.t  ; 2 uses
  %i.w = load float, ptr %3, align 16, !tbaa !8   ; 3 uses
  %i.x = fcmp olt float %i.w, 0.000000e+00
  %i.y = fneg float %i.w
  %.095 = select i1 %i.x, float %i.y, float %i.w  ; 2 uses
  %i.z = fcmp ogt float %.094, %.095              ; 2 uses
  %.2 = select i1 %i.z, float %.094, float %.095  ; 2 uses
  %i.aa = fcmp ogt float %.094.1, %.2             ; 2 uses
  %.2.1 = select i1 %i.aa, float %.094.1, float %.2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ab = load float, ptr %gep.2, align 16, !tbaa !8 ; 3 uses
  %i.ac = fcmp olt float %i.ab, 0.000000e+00
  %i.ad = fneg float %i.ab
  %.094.2 = select i1 %i.ac, float %i.ad, float %i.ab ; 2 uses
  %i.ae = fcmp ogt float %.094.2, %.2.1           ; 2 uses
  %.2.2 = select i1 %i.ae, float %.094.2, float %.2.1
  %i.af = fcmp une float %.2.2, 0.000000e+00
  %i.ag = zext i1 %i.z to i64
  %i.ah = select i1 %i.aa, i64 2, i64 %i.ag
  %i.ai = select i1 %i.ae, i64 3, i64 %i.ah       ; 3 uses
  br i1 %i.af, label %bb.c, label %.thread

bb.a:                                             ; preds = %.lr.ph122
  %.not.1 = icmp eq i64 %.198.1.1, 1
  br i1 %.not.1, label %.lr.ph122.1, label %.preheader112.1

.preheader112.1:                                  ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.198.1.1 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.198.1.1 ; 2 uses
  %i.am = load <4 x float>, ptr %i.ir, align 16, !tbaa !8
  %i.an = load <4 x float>, ptr %i.aj, align 16, !tbaa !8
  store <4 x float> %i.an, ptr %i.ir, align 16, !tbaa !8
  store <4 x float> %i.am, ptr %i.aj, align 16, !tbaa !8
  %i.ao = load <4 x float>, ptr %i.ak, align 16, !tbaa !8
  %i.ap = load <4 x float>, ptr %i.al, align 16, !tbaa !8
  store <4 x float> %i.ap, ptr %i.ak, align 16, !tbaa !8
  store <4 x float> %i.ao, ptr %i.al, align 16, !tbaa !8
  br label %.lr.ph122.1

.lr.ph122.1:                                      ; preds = %.preheader112.1, %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.at = load float, ptr %i.as, align 4, !tbaa !8
  %i.au = load float, ptr %i.is, align 4, !tbaa !8
  %i.av = fneg float %i.at
  %i.aw = fdiv float %i.av, %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ay = load <4 x float>, ptr %i.ir, align 16, !tbaa !8
  %i.az = load <4 x float>, ptr %i.ar, align 16, !tbaa !8
  %i.ba = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> %i.ay, <4 x float> %i.az)
  store <4 x float> %i.bc, ptr %i.ar, align 16, !tbaa !8
  %i.bd = load <4 x float>, ptr %i.aq, align 16, !tbaa !8
  %i.be = load <4 x float>, ptr %i.ax, align 16, !tbaa !8
  %i.bf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> %i.bd, <4 x float> %i.be)
  store <4 x float> %i.bf, ptr %i.ax, align 16, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !8
  %i.bj = load float, ptr %i.is, align 4, !tbaa !8
  %i.bk = fneg float %i.bi
  %i.bl = fdiv float %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.bn = load <4 x float>, ptr %i.ir, align 16, !tbaa !8
  %i.bo = load <4 x float>, ptr %i.bg, align 16, !tbaa !8
  %i.bp = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.br = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bq, <4 x float> %i.bn, <4 x float> %i.bo)
  store <4 x float> %i.br, ptr %i.bg, align 16, !tbaa !8
  %i.bs = load <4 x float>, ptr %i.aq, align 16, !tbaa !8
  %i.bt = load <4 x float>, ptr %i.bm, align 16, !tbaa !8
  %i.bu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bq, <4 x float> %i.bs, <4 x float> %i.bt)
  store <4 x float> %i.bu, ptr %i.bm, align 16, !tbaa !8
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.bx = load float, ptr %i.bw, align 8, !tbaa !8 ; 3 uses
  %i.by = fcmp olt float %i.bx, 0.000000e+00
  %i.bz = fneg float %i.bx
  %.095.2 = select i1 %i.by, float %i.bz, float %i.bx ; 2 uses
  %gep.2179 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ca = load float, ptr %gep.2179, align 8, !tbaa !8 ; 3 uses
  %i.cb = fcmp olt float %i.ca, 0.000000e+00
  %i.cc = fneg float %i.ca
  %.094.2180 = select i1 %i.cb, float %i.cc, float %i.ca ; 2 uses
  %i.cd = fcmp ule float %.094.2180, %.095.2      ; 2 uses
  %.2.2182 = select i1 %i.cd, float %.095.2, float %.094.2180
  %i.ce = fcmp une float %.2.2182, 0.000000e+00
  br i1 %i.ce, label %bb.b, label %.thread

bb.b:                                             ; preds = %.lr.ph122.1
  br i1 %i.cd, label %.lr.ph122.2, label %.preheader112.2

.preheader112.2:                                  ; preds = %bb.b
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ci = load <4 x float>, ptr %i.bv, align 16, !tbaa !8
  %i.cj = load <4 x float>, ptr %i.cf, align 16, !tbaa !8
  store <4 x float> %i.cj, ptr %i.bv, align 16, !tbaa !8
  store <4 x float> %i.ci, ptr %i.cf, align 16, !tbaa !8
  %i.ck = load <4 x float>, ptr %i.cg, align 16, !tbaa !8
  %i.cl = load <4 x float>, ptr %i.ch, align 16, !tbaa !8
  store <4 x float> %i.cl, ptr %i.cg, align 16, !tbaa !8
  store <4 x float> %i.ck, ptr %i.ch, align 16, !tbaa !8
  br label %.lr.ph122.2

.lr.ph122.2:                                      ; preds = %bb.b, %.preheader112.2
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.cp = load float, ptr %i.co, align 8, !tbaa !8
  %i.cq = load float, ptr %i.bw, align 8, !tbaa !8
  %i.cr = fneg float %i.cp
  %i.cs = fdiv float %i.cr, %i.cq
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.cu = load <4 x float>, ptr %i.bv, align 16, !tbaa !8
  %i.cv = load <4 x float>, ptr %i.cn, align 16, !tbaa !8
  %i.cw = insertelement <4 x float> poison, float %i.cs, i64 0
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> %i.cu, <4 x float> %i.cv)
  store <4 x float> %i.cy, ptr %i.cn, align 16, !tbaa !8
  %i.cz = load <4 x float>, ptr %i.cm, align 16, !tbaa !8
  %i.da = load <4 x float>, ptr %i.ct, align 16, !tbaa !8
  %i.db = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> %i.cz, <4 x float> %i.da)
  store <4 x float> %i.db, ptr %i.ct, align 16, !tbaa !8
end_hunk_0
begin_hunk_1_@_ZNK9Imath_3_18Matrix44IfE9gjInverseEv:.lr.ph.preheader
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
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"float", !4, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!"_ZTSN9Imath_3_14Vec2IfEE", !7, i64 0, !7, i64 4}
!10 = !{!9, !7, i64 0}
!11 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_514ChromaticitiesE", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!12 = !{!11, !7, i64 28}
!13 = !{!11, !7, i64 24}
!14 = !{!11, !7, i64 20}
!15 = !{!11, !7, i64 16}
!16 = !{!11, !7, i64 0}
!17 = !{!11, !7, i64 4}
!18 = !{!11, !7, i64 12}
end_hunk_1
