Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinyrenderer/original/our_gl?download=true
inline.NumInlined: 150
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%struct.mat = type { [4 x %struct.vec] }
%struct.vec = type { double, double, double, double }
%struct.ident_t = type { i32, i32, i32, i32, ptr }
%struct.vec.0 = type { double, double, double }
%struct.mat.2 = type { [3 x %struct.vec.0] }
%"struct.std::pair" = type { i8, %struct.TGAColor }
%struct.TGAColor = type { [4 x i8], i8 }

$_ZNSt6vectorIdSaIdEED2Ev = comdat any

$__clang_call_terminate = comdat any

@ModelView = dso_local local_unnamed_addr global %struct.mat zeroinitializer, align 8
@Viewport = dso_local local_unnamed_addr global %struct.mat zeroinitializer, align 64
@Perspective = dso_local local_unnamed_addr global %struct.mat zeroinitializer, align 8
@zbuffer = dso_local global { { ptr, ptr, ptr } } zeroinitializer, align 8
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_our_gl.cpp, ptr null }]

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #18
  br label %_ZNSt12_Vector_baseIdSaIdEED2Ev.exit

_ZNSt12_Vector_baseIdSaIdEED2Ev.exit:             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Z6lookat3vecILi3EES0_S0_(ptr nofree noundef readonly byval(%struct.vec.0) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.vec.0) align 8 captures(none) %1, ptr nofree noundef readonly byval(%struct.vec.0) align 8 captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %.sroa.1065.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.1065.0.copyload = load double, ptr %.sroa.1065.0..sroa_idx, align 8, !tbaa !16
  %i.c = load double, ptr %i.a, align 8, !tbaa !16, !noalias !26 ; 2 uses
  %i.d = fsub double %.sroa.1065.0.copyload, %i.c ; 3 uses
  %3 = tail call double @llvm.fmuladd.f64(double %i.d, double %i.d, double 0.000000e+00)
  %i.e = load double, ptr %2, align 8, !tbaa !27, !noalias !28 ; 2 uses
  %i.f = load <2 x double>, ptr %0, align 8, !tbaa !16
  %i.g = load <2 x double>, ptr %1, align 8, !tbaa !16, !noalias !26 ; 3 uses
  %i.h = fsub <2 x double> %i.f, %i.g             ; 3 uses
  %i.i = extractelement <2 x double> %i.h, i64 1  ; 2 uses
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double %i.i, double %3)
  %i.k = extractelement <2 x double> %i.h, i64 0  ; 2 uses
  %i.l = tail call noundef double @llvm.fmuladd.f64(double %i.k, double %i.k, double %i.j)
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.l) ; 2 uses
  %i.m = extractelement <2 x double> %i.g, i64 0
  %i.n = extractelement <2 x double> %i.g, i64 1
  %i.o = insertelement <2 x double> poison, double %sqrt.i.i, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fdiv <2 x double> %i.h, %i.p             ; 12 uses
  %i.r = extractelement <2 x double> %i.q, i64 1
  %i.s = extractelement <2 x double> %i.q, i64 0
  %i.t = fneg double %i.s
  %i.u = fneg double %i.c                         ; 2 uses
  %i.v = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.u, i64 0 ; 2 uses
  %i.w = fneg double %i.m                         ; 2 uses
  %i.x = fneg double %i.n                         ; 2 uses
  %i.y = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.x, i64 0 ; 2 uses
  %i.z = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.w, i64 0 ; 2 uses
  %i.aa = insertelement <2 x double> poison, double %i.u, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = insertelement <2 x double> %i.q, double 0.000000e+00, i64 0
  %i.ad = insertelement <2 x double> poison, double %i.x, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = shufflevector <2 x double> %i.q, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.ag = insertelement <2 x double> poison, double %i.w, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = load <2 x double>, ptr %i.b, align 8, !tbaa !16, !noalias !28 ; 3 uses
  %i.aj = fdiv double %i.d, %sqrt.i.i             ; 6 uses
  %i.ak = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.al = insertelement <2 x double> %i.ak, double %i.aj, i64 1
  %i.am = fneg <2 x double> %i.al
  %i.an = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ao = insertelement <2 x double> %i.an, double %i.e, i64 1
  %i.ap = fmul <2 x double> %i.ao, %i.am
  %i.aq = insertelement <2 x double> %i.ak, double %i.aj, i64 0 ; 2 uses
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.aq, <2 x double> %i.ap) ; 4 uses
  %i.as = extractelement <2 x double> %i.ai, i64 0
  %i.at = fmul double %i.as, %i.t
  %4 = extractelement <2 x double> %i.ar, i64 1   ; 2 uses
  %5 = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.aj, i64 1
  %6 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %5, <2 x double> %i.ab, <2 x double> <double 1.000000e+00, double 0.000000e+00>)
  %7 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.ae, <2 x double> %6)
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> %i.ah, <2 x double> %7) ; 2 uses
  %8 = tail call double @llvm.fmuladd.f64(double %i.e, double %i.r, double %i.at) ; 3 uses
  %9 = tail call double @llvm.fmuladd.f64(double %8, double %8, double 0.000000e+00)
  %i.av = tail call double @llvm.fmuladd.f64(double %4, double %4, double %9)
  %i.aw = fadd double %i.aj, 0.000000e+00
  %i.ax = shufflevector <2 x double> %i.ar, <2 x double> %i.q, <2 x i32> <i32 0, i32 3>
  %i.ay = insertelement <2 x double> %i.ar, double 0.000000e+00, i64 1
  %i.az = insertelement <2 x double> poison, double %i.av, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.aw, i64 1
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.ay, <2 x double> %i.ba) ; 2 uses
  %i.bc = extractelement <2 x double> %i.bb, i64 0
  %sqrt.i.i1 = tail call noundef double @llvm.sqrt.f64(double %i.bc) ; 2 uses
  %i.bd = fdiv double %8, %sqrt.i.i1              ; 5 uses
  %i.be = insertelement <2 x double> poison, double %sqrt.i.i1, i64 0
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = fdiv <2 x double> %i.ar, %i.bf          ; 8 uses
  %i.bh = extractelement <2 x double> %i.bg, i64 1 ; 3 uses
  %10 = fneg double %i.bh
  %11 = fmul double %i.aj, %10
  %i.bi = extractelement <2 x double> %i.bg, i64 0
  %i.bj = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bl = insertelement <2 x double> %i.bk, double %i.bd, i64 0
  %i.bm = fneg <2 x double> %i.bl
  %i.bn = fmul <2 x double> %i.q, %i.bm
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.bg, <2 x double> %i.bn) ; 4 uses
  %12 = shufflevector <2 x double> %i.q, <2 x double> %i.bo, <2 x i32> <i32 1, i32 3>
  %13 = insertelement <2 x double> %i.bo, double %i.bd, i64 0
  %14 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %11, i64 0
  %15 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> %13, <2 x double> %14) ; 2 uses
  %16 = extractelement <2 x double> %15, i64 0    ; 3 uses
  %17 = extractelement <2 x double> %i.bo, i64 0  ; 2 uses
  %i.bp = extractelement <2 x double> %15, i64 1
  %18 = tail call double @llvm.fmuladd.f64(double %17, double %17, double %i.bp)
  %i.bq = tail call noundef double @llvm.fmuladd.f64(double %16, double %16, double %18)
  %sqrt.i.i2 = tail call noundef double @llvm.sqrt.f64(double %i.bq) ; 2 uses
  %i.br = insertelement <2 x double> poison, double %sqrt.i.i2, i64 0
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bt = fdiv <2 x double> %i.bo, %i.bs          ; 6 uses
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.bv = insertelement <2 x double> %i.bu, double %i.aj, i64 1
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> %i.v, <2 x double> zeroinitializer) ; 2 uses
  %foldExtExtBinop = fadd <2 x double> %i.q, %i.bw
  %i.bx = shufflevector <2 x double> %foldExtExtBinop, <2 x double> %i.bb, <2 x i32> <i32 1, i32 3>
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> zeroinitializer, <2 x double> %i.bx)
  %i.bz = shufflevector <2 x double> %i.bt, <2 x double> %i.q, <2 x i32> <i32 0, i32 3>
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.y, <2 x double> %i.bw)
  %i.cb = fdiv double %16, %sqrt.i.i2             ; 2 uses
  %i.cc = insertelement <2 x double> poison, double %i.cb, i64 0 ; 2 uses
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> %i.q, <2 x i32> <i32 0, i32 2>
  %i.ce = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %i.z, <2 x double> %i.ca)
  %i.cf = insertelement <2 x double> %i.bt, double %i.bd, i64 0
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %i.v, <2 x double> zeroinitializer) ; 2 uses
  %shift = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop82 = fadd <2 x double> %i.bt, %shift
  %19 = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer
  %20 = shufflevector <2 x double> %i.bg, <2 x double> %i.bt, <2 x i32> <i32 1, i32 2>
  %21 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> %i.y, <2 x double> %i.cg)
  %i.ch = insertelement <2 x double> %i.bg, double %i.cb, i64 1
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.z, <2 x double> %21)
  %22 = insertelement <2 x double> %i.bu, double %i.bd, i64 1
  %23 = fadd <2 x double> %22, zeroinitializer
  %24 = shufflevector <2 x double> %i.bt, <2 x double> %i.bg, <2 x i32> <i32 0, i32 3>
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %24, <2 x double> zeroinitializer, <2 x double> %23) ; 2 uses
  %25 = shufflevector <2 x double> %foldExtExtBinop82, <2 x double> %i.cj, <2 x i32> <i32 0, i32 2>
  %26 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %19, <2 x double> zeroinitializer, <2 x double> %25)
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.bd, double 0.000000e+00, double 0.000000e+00) ; 2 uses
  %i.cl = fadd double %i.bh, %i.ck
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.bh, double 0.000000e+00, double %i.ck)
  %i.cn = fadd double %i.bi, %i.cm
  store double %i.cn, ptr @ModelView, align 8
  %i.co = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = insertelement <2 x double> %i.cj, double %i.cl, i64 0
  %i.cq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> zeroinitializer, <2 x double> %i.cp)
  store <2 x double> %i.cq, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 8), align 8
  store <2 x double> %i.ci, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 24), align 8
  store <2 x double> %26, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 40), align 8
  store <2 x double> %i.ce, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 56), align 8
  store <2 x double> %i.by, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 72), align 8
  %i.cr = extractelement <2 x double> %i.au, i64 1
  store double %i.cr, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 88), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @ModelView, i64 96), i8 0, i64 24, i1 false)
  %i.cs = extractelement <2 x double> %i.au, i64 0
  store double %i.cs, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 120), align 8, !tbaa !18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Z16init_perspectived(double noundef %0) local_unnamed_addr #9 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @Perspective, i64 8), i8 0, i64 24, i1 false)
  %i.a = fdiv double -1.000000e+00, %0
  store double 1.000000e+00, ptr @Perspective, align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @Perspective, i64 32), align 8
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @Perspective, i64 40), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @Perspective, i64 48), i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @Perspective, i64 80), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @Perspective, i64 88), i8 0, i64 24, i1 false)
  store double %i.a, ptr getelementptr inbounds nuw (i8, ptr @Perspective, i64 112), align 8
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @Perspective, i64 120), align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Z13init_viewportiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = sitofp i32 %2 to double
  %i.b = fmul nnan double %i.a, 5.000000e-01      ; 2 uses
  %i.c = sitofp i32 %0 to double
  %i.d = fadd double %i.b, %i.c
  %i.e = sitofp i32 %3 to double
  %i.f = fmul nnan double %i.e, 5.000000e-01      ; 2 uses
  %i.g = sitofp i32 %1 to double
  %i.h = fadd double %i.f, %i.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @Viewport, i64 64), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @Viewport, i64 96), i8 0, i64 24, i1 false)
  store double %i.b, ptr @Viewport, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @Viewport, i64 8), i8 0, i64 16, i1 false)
  store double %i.d, ptr getelementptr inbounds nuw (i8, ptr @Viewport, i64 24), align 8
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @Viewport, i64 32), align 8
  store double %i.f, ptr getelementptr inbounds nuw (i8, ptr @Viewport, i64 40), align 8
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @Viewport, i64 48), align 8
  store double %i.h, ptr getelementptr inbounds nuw (i8, ptr @Viewport, i64 56), align 8
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @Viewport, i64 80), align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @Viewport, i64 88), align 8
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @Viewport, i64 120), align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z12init_zbufferii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = mul nsw i32 %1, %0                       ; 3 uses
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = icmp slt i32 %i.a, 0
  br i1 %i.c, label %.noexc, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit, label %.noexc3

.noexc3:                                          ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.d = shl nuw nsw i64 %i.b, 3                  ; 3 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #21 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d ; 2 uses
  %i.g = add nsw i64 %i.d, -8                     ; 2 uses
  %i.h = lshr exact i64 %i.g, 3
  %i.i = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.g, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc3
  %n.vec = and i64 %i.i, 4611686018427387900      ; 3 uses
  %i.j = shl i64 %n.vec, 3
  %i.k = getelementptr i8, ptr %i.e, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.l = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.e, i64 %i.l ; 2 uses
  %i.m = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> splat (double -1.000000e+03), ptr %next.gep, align 8, !tbaa !16
  store <2 x double> splat (double -1.000000e+03), ptr %i.m, align 8, !tbaa !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %.noexc3, %middle.block
  %.07.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.e, %.noexc3 ], [ %i.k, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store double -1.000000e+03, ptr %.07.i.i.i.i.i.i.i.i.i, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !30

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.loopexit:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.b
  br label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit:            ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.loopexit, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.p, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.loopexit ]
  %.sroa.04.0 = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.e, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.loopexit ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.f, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.loopexit ]
  %i.q = load ptr, ptr @zbuffer, align 8, !tbaa !13 ; 3 uses
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @zbuffer, i64 16), align 8, !tbaa !14
  store ptr %.sroa.04.0, ptr @zbuffer, align 8, !tbaa !13
  store ptr %.0.i.i.i.i.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @zbuffer, i64 8), align 8, !tbaa !33
  store ptr %.sroa.11.0, ptr getelementptr inbounds nuw (i8, ptr @zbuffer, i64 16), align 8, !tbaa !14
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #18
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.b, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z9rasterizeRA3_K3vecILi4EERK7IShaderR8TGAImage(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [3 x %struct.vec], align 16         ; 8 uses
  %4 = alloca %struct.mat.2, align 8              ; 6 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !42
  %i.f = load <2 x double>, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !tbaa.struct !42
  %i.j = load double, ptr %i.i, align 8, !tbaa !16, !noalias !43
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !tbaa.struct !42
  %i.n = load double, ptr %i.m, align 8, !tbaa !16, !noalias !44
  %i.o = load <8 x double>, ptr %3, align 16, !tbaa !16 ; 4 uses
  %i.p = shufflevector <8 x double> %i.o, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.q = insertelement <2 x double> %i.f, double %i.j, i64 1 ; 4 uses
  %i.r = fdiv <2 x double> %i.p, %i.q             ; 3 uses
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.t = shufflevector <8 x double> %i.o, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.u = fdiv <2 x double> %i.t, %i.q             ; 3 uses
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.w = shufflevector <8 x double> %i.o, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.x = fdiv <2 x double> %i.w, %i.q             ; 3 uses
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.z = shufflevector <8 x double> %i.o, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.aa = fdiv <2 x double> %i.z, %i.q            ; 3 uses
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ac = shufflevector <2 x double> %i.aa, <2 x double> %i.x, <2 x i32> <i32 0, i32 2>
  %i.ad = shufflevector <2 x double> %i.u, <2 x double> %i.r, <2 x i32> <i32 0, i32 2>
  %i.ae = shufflevector <2 x double> %i.ac, <2 x double> %i.ad, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x double> %i.ae, ptr %3, align 16, !tbaa !16, !alias.scope !45
  %i.af = shufflevector <2 x double> %i.aa, <2 x double> %i.x, <2 x i32> <i32 1, i32 3>
  %i.ag = shufflevector <2 x double> %i.u, <2 x double> %i.r, <2 x i32> <i32 1, i32 3>
  %i.ah = shufflevector <2 x double> %i.af, <2 x double> %i.ag, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x double> %i.ah, ptr %i.g, align 16, !tbaa !16, !alias.scope !43
  %i.ai = load <8 x double>, ptr @Viewport, align 64, !tbaa !16, !noalias !46 ; 6 uses
end_hunk_0
