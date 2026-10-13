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
  %i.e = tail call double @llvm.fmuladd.f64(double %i.d, double %i.d, double 0.000000e+00)
  %i.f = load double, ptr %2, align 8, !tbaa !27, !noalias !28 ; 2 uses
  %i.g = load <2 x double>, ptr %0, align 8, !tbaa !16
  %i.h = load <2 x double>, ptr %1, align 8, !tbaa !16, !noalias !26 ; 3 uses
  %i.i = fsub <2 x double> %i.g, %i.h             ; 3 uses
  %i.j = extractelement <2 x double> %i.i, i64 1  ; 2 uses
  %i.k = tail call double @llvm.fmuladd.f64(double %i.j, double %i.j, double %i.e)
  %i.l = extractelement <2 x double> %i.i, i64 0  ; 2 uses
  %i.m = tail call noundef double @llvm.fmuladd.f64(double %i.l, double %i.l, double %i.k)
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.m) ; 2 uses
  %i.n = extractelement <2 x double> %i.h, i64 0
  %i.o = extractelement <2 x double> %i.h, i64 1
  %i.p = insertelement <2 x double> poison, double %sqrt.i.i, i64 0
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = fdiv <2 x double> %i.i, %i.q             ; 12 uses
  %i.s = extractelement <2 x double> %i.r, i64 1
  %i.t = extractelement <2 x double> %i.r, i64 0
  %i.u = fneg double %i.t
  %i.v = fneg double %i.c                         ; 2 uses
  %i.w = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.v, i64 0 ; 2 uses
  %i.x = fneg double %i.n                         ; 2 uses
  %i.y = fneg double %i.o                         ; 2 uses
  %i.z = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.y, i64 0 ; 2 uses
  %i.aa = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.x, i64 0 ; 2 uses
  %i.ab = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = insertelement <2 x double> %i.r, double 0.000000e+00, i64 0
  %i.ae = insertelement <2 x double> poison, double %i.y, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = shufflevector <2 x double> %i.r, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.ah = insertelement <2 x double> poison, double %i.x, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = load <2 x double>, ptr %i.b, align 8, !tbaa !16, !noalias !28 ; 3 uses
  %i.ak = fdiv double %i.d, %sqrt.i.i             ; 6 uses
  %i.al = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.am = insertelement <2 x double> %i.al, double %i.ak, i64 1
  %i.an = fneg <2 x double> %i.am
  %i.ao = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ap = insertelement <2 x double> %i.ao, double %i.f, i64 1
  %i.aq = fmul <2 x double> %i.ap, %i.an
  %i.ar = insertelement <2 x double> %i.al, double %i.ak, i64 0 ; 2 uses
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.ar, <2 x double> %i.aq) ; 4 uses
  %i.at = extractelement <2 x double> %i.aj, i64 0
  %i.au = fmul double %i.at, %i.u
  %i.av = extractelement <2 x double> %i.as, i64 1 ; 2 uses
  %i.aw = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.ak, i64 1
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.ac, <2 x double> <double 1.000000e+00, double 0.000000e+00>)
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %i.af, <2 x double> %i.ax)
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> %i.ai, <2 x double> %i.ay) ; 2 uses
  %3 = tail call double @llvm.fmuladd.f64(double %i.f, double %i.s, double %i.au) ; 3 uses
  %i.ba = tail call double @llvm.fmuladd.f64(double %3, double %3, double 0.000000e+00)
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.av, double %i.av, double %i.ba)
  %4 = fadd double %i.ak, 0.000000e+00
  %i.bc = shufflevector <2 x double> %i.as, <2 x double> %i.r, <2 x i32> <i32 0, i32 3>
  %i.bd = insertelement <2 x double> %i.as, double 0.000000e+00, i64 1
  %i.be = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %4, i64 1
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.bd, <2 x double> %i.bf) ; 2 uses
  %i.bh = extractelement <2 x double> %i.bg, i64 0
  %sqrt.i.i1 = tail call noundef double @llvm.sqrt.f64(double %i.bh) ; 2 uses
  %i.bi = fdiv double %3, %sqrt.i.i1              ; 5 uses
  %i.bj = insertelement <2 x double> poison, double %sqrt.i.i1, i64 0
  %i.bk = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = fdiv <2 x double> %i.as, %i.bk          ; 8 uses
  %i.bm = extractelement <2 x double> %i.bl, i64 1 ; 3 uses
  %i.bn = fneg double %i.bm
  %i.bo = fmul double %i.ak, %i.bn
  %i.bp = extractelement <2 x double> %i.bl, i64 0
  %i.bq = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bs = insertelement <2 x double> %i.br, double %i.bi, i64 0
  %i.bt = fneg <2 x double> %i.bs
  %i.bu = fmul <2 x double> %i.r, %i.bt
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.bl, <2 x double> %i.bu) ; 4 uses
  %i.bw = shufflevector <2 x double> %i.r, <2 x double> %i.bv, <2 x i32> <i32 1, i32 3>
  %i.bx = insertelement <2 x double> %i.bv, double %i.bi, i64 0
  %i.by = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.bo, i64 0
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.bx, <2 x double> %i.by) ; 2 uses
  %i.ca = extractelement <2 x double> %i.bz, i64 0 ; 3 uses
  %i.cb = extractelement <2 x double> %i.bv, i64 0 ; 2 uses
  %i.cc = extractelement <2 x double> %i.bz, i64 1
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.cb, double %i.cc)
  %i.ce = tail call noundef double @llvm.fmuladd.f64(double %i.ca, double %i.ca, double %i.cd)
  %sqrt.i.i2 = tail call noundef double @llvm.sqrt.f64(double %i.ce) ; 2 uses
  %i.cf = insertelement <2 x double> poison, double %sqrt.i.i2, i64 0
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ch = fdiv <2 x double> %i.bv, %i.cg          ; 6 uses
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.cj = insertelement <2 x double> %i.ci, double %i.ak, i64 1
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.w, <2 x double> zeroinitializer) ; 2 uses
  %foldExtExtBinop = fadd <2 x double> %i.r, %i.ck
  %i.cl = shufflevector <2 x double> %foldExtExtBinop, <2 x double> %i.bg, <2 x i32> <i32 1, i32 3>
  %i.cm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> zeroinitializer, <2 x double> %i.cl)
  %i.cn = shufflevector <2 x double> %i.ch, <2 x double> %i.r, <2 x i32> <i32 0, i32 3>
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.z, <2 x double> %i.ck)
  %i.cp = fdiv double %i.ca, %sqrt.i.i2           ; 2 uses
  %i.cq = insertelement <2 x double> poison, double %i.cp, i64 0 ; 2 uses
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> %i.r, <2 x i32> <i32 0, i32 2>
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> %i.aa, <2 x double> %i.co)
  %i.ct = insertelement <2 x double> %i.ch, double %i.bi, i64 0
  %i.cu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.w, <2 x double> zeroinitializer) ; 2 uses
  %shift = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop82 = fadd <2 x double> %i.ch, %shift
  %i.cv = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = shufflevector <2 x double> %i.bl, <2 x double> %i.ch, <2 x i32> <i32 1, i32 2>
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> %i.z, <2 x double> %i.cu)
  %i.cy = insertelement <2 x double> %i.bl, double %i.cp, i64 1
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.aa, <2 x double> %i.cx)
  %i.da = insertelement <2 x double> %i.ci, double %i.bi, i64 1
  %i.db = fadd <2 x double> %i.da, zeroinitializer
  %i.dc = shufflevector <2 x double> %i.ch, <2 x double> %i.bl, <2 x i32> <i32 0, i32 3>
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> zeroinitializer, <2 x double> %i.db) ; 2 uses
  %i.de = shufflevector <2 x double> %foldExtExtBinop82, <2 x double> %i.dd, <2 x i32> <i32 0, i32 2>
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cv, <2 x double> zeroinitializer, <2 x double> %i.de)
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.bi, double 0.000000e+00, double 0.000000e+00) ; 2 uses
  %i.dh = fadd double %i.bm, %i.dg
  %i.di = tail call double @llvm.fmuladd.f64(double %i.bm, double 0.000000e+00, double %i.dg)
  %i.dj = fadd double %i.bp, %i.di
  store double %i.dj, ptr @ModelView, align 8
  %i.dk = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dl = insertelement <2 x double> %i.dd, double %i.dh, i64 0
  %i.dm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> zeroinitializer, <2 x double> %i.dl)
  store <2 x double> %i.dm, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 8), align 8
  store <2 x double> %i.cz, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 24), align 8
  store <2 x double> %i.df, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 40), align 8
  store <2 x double> %i.cs, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 56), align 8
  store <2 x double> %i.cm, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 72), align 8
  %i.dn = extractelement <2 x double> %i.az, i64 1
  store double %i.dn, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 88), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @ModelView, i64 96), i8 0, i64 24, i1 false)
  %i.do = extractelement <2 x double> %i.az, i64 0
  store double %i.do, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 120), align 8, !tbaa !18
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
end_hunk_0
begin_hunk_1_@_Z9rasterizeRA3_K3vecILi4EERK7IShaderR8TGAImage:bb.a
  %i.ak = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Viewport, i64 40), align 8
  %i.al = load double, ptr getelementptr inbounds nuw (i8, ptr @Viewport, i64 24), align 8, !tbaa !16, !noalias !46
  %i.am = load double, ptr getelementptr inbounds nuw (i8, ptr @Viewport, i64 8), align 8, !tbaa !16, !noalias !46
  %i.an = shufflevector <8 x double> %i.ai, <8 x double> poison, <4 x i32> <i32 7, i32 3, i32 7, i32 3>
  %i.ao = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.an, <4 x double> %i.s, <4 x double> zeroinitializer)
  %i.ap = shufflevector <8 x double> %i.ai, <8 x double> poison, <4 x i32> <i32 6, i32 2, i32 6, i32 2>
  %i.aq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ap, <4 x double> %i.v, <4 x double> %i.ao)
  %i.ar = shufflevector <8 x double> %i.ai, <8 x double> poison, <4 x i32> <i32 5, i32 1, i32 5, i32 1>
  %i.as = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ar, <4 x double> %i.y, <4 x double> %i.aq)
  %i.at = shufflevector <8 x double> %i.ai, <8 x double> poison, <4 x i32> <i32 4, i32 0, i32 4, i32 0>
  %i.au = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.at, <4 x double> %i.ab, <4 x double> %i.as) ; 10 uses
  %i.av = load <4 x double>, ptr %i.k, align 16, !tbaa !16, !alias.scope !44
  %i.aw = insertelement <4 x double> poison, double %i.n, i64 0
  %i.ax = shufflevector <4 x double> %i.aw, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ay = fdiv <4 x double> %i.av, %i.ax          ; 5 uses
  store <4 x double> %i.ay, ptr %i.k, align 16, !tbaa !16, !alias.scope !44
  %i.az = insertelement <2 x double> %i.aj, double %i.al, i64 1
  %i.ba = shufflevector <4 x double> %i.ay, <4 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.ba, <2 x double> zeroinitializer)
  %i.bc = shufflevector <8 x double> %i.ai, <8 x double> poison, <2 x i32> <i32 6, i32 2>
  %i.bd = shufflevector <4 x double> %i.ay, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.bd, <2 x double> %i.bb)
  %i.bf = insertelement <2 x double> %i.ak, double %i.am, i64 1
  %i.bg = shufflevector <4 x double> %i.ay, <4 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> %i.bg, <2 x double> %i.be)
  %i.bi = shufflevector <8 x double> %i.ai, <8 x double> poison, <2 x i32> <i32 4, i32 0>
  %i.bj = shufflevector <4 x double> %i.ay, <4 x double> poison, <2 x i32> zeroinitializer
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.bj, <2 x double> %i.bh) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.bl = extractelement <4 x double> %i.au, i64 1
  %i.bm = extractelement <4 x double> %i.au, i64 0
  %i.bn = extractelement <4 x double> %i.au, i64 3 ; 2 uses
  %i.bo = shufflevector <4 x double> %i.au, <4 x double> <double poison, double poison, double 1.000000e+00, double poison>, <4 x i32> <i32 1, i32 0, i32 6, i32 3>
  store <4 x double> %i.bo, ptr %4, align 8, !tbaa !16
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bq = extractelement <4 x double> %i.au, i64 2 ; 2 uses
  %i.br = extractelement <2 x double> %i.bk, i64 1 ; 2 uses
  %i.bs = extractelement <2 x double> %i.bk, i64 0 ; 2 uses
  %i.bt = shufflevector <2 x double> %i.bk, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bu = shufflevector <4 x double> %i.au, <4 x double> %i.bt, <4 x i32> <i32 2, i32 poison, i32 5, i32 4>
  %i.bv = insertelement <4 x double> %i.bu, double 1.000000e+00, i64 1
  store <4 x double> %i.bv, ptr %i.bp, align 8, !tbaa !16
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 64
  store double 1.000000e+00, ptr %i.bw, align 8, !tbaa !47
  %i.bx = fneg double %i.br
  %i.by = fsub double 0.000000e+00, %i.br
  %i.bz = fadd double %i.bn, %i.by
  %i.ca = fneg double %i.bz
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.bx, double 0.000000e+00)
  %i.cc = tail call noundef double @llvm.fmuladd.f64(double %i.bn, double %i.bs, double %i.cb)
  %i.cd = fadd double %i.cc, 0.000000e+00
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.ca, double %i.cd)
  %i.cf = fsub double 0.000000e+00, %i.bs
  %i.cg = fadd double %i.bq, %i.cf
  %i.ch = tail call noundef double @llvm.fmuladd.f64(double %i.bl, double %i.cg, double %i.ce)
  %i.ci = fcmp olt double %i.ch, 1.000000e+00
  br i1 %i.ci, label %bb.b, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.cj = shufflevector <4 x double> %i.au, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ck = fcmp olt <4 x double> %i.au, %i.cj      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.cl = shufflevector <4 x i1> %i.ck, <4 x i1> poison, <2 x i32> <i32 2, i32 3>
  %i.cm = shufflevector <4 x double> %i.au, <4 x double> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.cn = shufflevector <4 x double> %i.au, <4 x double> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.co = select <2 x i1> %i.cl, <2 x double> %i.cm, <2 x double> %i.cn ; 2 uses
  %i.cp = fcmp olt <2 x double> %i.bk, %i.co
  %i.cq = select <2 x i1> %i.cp, <2 x double> %i.bk, <2 x double> %i.co ; 2 uses
  %i.cr = extractelement <2 x double> %i.cq, i64 1
  store double %i.cr, ptr %i.a, align 8, !tbaa !16
  %i.cs = extractelement <2 x double> %i.cq, i64 0
  store double %i.cs, ptr %i.c, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.ct = shufflevector <4 x i1> %i.ck, <4 x i1> poison, <2 x i32> <i32 0, i32 1>
  %i.cu = select <2 x i1> %i.ct, <2 x double> %i.cm, <2 x double> %i.cn ; 2 uses
  %i.cv = fcmp olt <2 x double> %i.cu, %i.bk
  %i.cw = select <2 x i1> %i.cv, <2 x double> %i.bk, <2 x double> %i.cu ; 2 uses
  %i.cx = extractelement <2 x double> %i.cw, i64 1
  store double %i.cx, ptr %i.b, align 8, !tbaa !16
  %i.cy = extractelement <2 x double> %i.cw, i64 0
  store double %i.cy, ptr %i.d, align 8, !tbaa !16
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_Z9rasterizeRA3_K3vecILi4EERK7IShaderR8TGAImage.omp_outlined, ptr nonnull %i.b, ptr nonnull %2, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %4, ptr nonnull %0, ptr nonnull %3, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_Z9rasterizeRA3_K3vecILi4EERK7IShaderR8TGAImage.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %9, ptr noundef nonnull align 8 dereferenceable(8) %10) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"struct.std::pair", align 8       ; 4 uses
  %12 = alloca %struct.vec.0, align 16            ; 3 uses
  %i.e = load double, ptr %4, align 8, !tbaa !16
  %i.f = fptosi double %i.e to i32
  %.sroa.speculated99 = tail call i32 @llvm.smax.i32(i32 %i.f, i32 0) ; 3 uses
  %i.g = load double, ptr %2, align 8, !tbaa !16
  %i.h = invoke noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.b unwind label %.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.i = fptosi double %i.g to i32
  %i.j = add nsw i32 %i.h, -1
  %.sroa.speculated93 = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.i) ; 2 uses
  %.not = icmp sgt i32 %.sroa.speculated99, %.sroa.speculated93
  br i1 %.not, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = sub nuw nsw i32 %.sroa.speculated93, %.sroa.speculated99 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 %i.k, ptr %i.b, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 1, ptr %i.c, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i32 0, ptr %i.d, align 4, !tbaa !51
  %i.l = load i32, ptr %0, align 4, !tbaa !51     ; 2 uses
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %i.l, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.m = load i32, ptr %i.b, align 4, !tbaa !51
  %i.n = call i32 @llvm.umin.i32(i32 %i.m, i32 %i.k) ; 2 uses
  store i32 %i.n, ptr %i.b, align 4, !tbaa !51
  %i.o = load i32, ptr %i.a, align 4, !tbaa !51   ; 2 uses
  %.not53104 = icmp ugt i32 %i.o, %i.n
  br i1 %.not53104, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 80
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %.050105 = phi i32 [ %i.o, %.lr.ph ], [ %i.al, %bb.g ] ; 2 uses
  %i.ab = add i32 %.050105, %.sroa.speculated99   ; 4 uses
  %i.ac = load double, ptr %5, align 8, !tbaa !16
  %i.ad = fptosi double %i.ac to i32
  %.sroa.speculated87 = call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  %i.ae = sitofp i32 %i.ab to double              ; 2 uses
  %i.af = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.p, %bb.d
  %.0 = phi i32 [ %.sroa.speculated87, %bb.d ], [ %i.et, %bb.p ] ; 6 uses
  %i.ah = load double, ptr %6, align 8, !tbaa !16
  %i.ai = invoke noundef i32 @_ZNK8TGAImage6heightEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.f unwind label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.aj = fptosi double %i.ah to i32
  %i.ak = add nsw i32 %i.ai, -1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ak, i32 %i.aj)
  %.not54 = icmp sgt i32 %.0, %.sroa.speculated
  br i1 %.not54, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = add i32 %.050105, 1                     ; 2 uses
  %i.am = load i32, ptr %i.b, align 4, !tbaa !51
  %.not53 = icmp ugt i32 %i.al, %i.am
  br i1 %.not53, label %._crit_edge, label %bb.d

bb.h:                                             ; preds = %bb.f
  %i.an = load double, ptr %i.s, align 8, !tbaa !16, !noalias !52
  %i.ao = fneg double %i.an                       ; 2 uses
  %i.ap = uitofp nneg i32 %.0 to double           ; 2 uses
  %i.aq = load <2 x double>, ptr %i.u, align 8
  %i.ar = load double, ptr %i.v, align 8, !tbaa !54
  %i.as = load double, ptr %i.p, align 8, !tbaa !16, !noalias !52 ; 2 uses
  %i.at = load <2 x double>, ptr %7, align 8, !tbaa !16, !noalias !52 ; 7 uses
  %i.au = fneg double %i.as
  %i.av = extractelement <2 x double> %i.at, i64 1
  %i.aw = load double, ptr %i.r, align 8, !tbaa !16, !noalias !52 ; 4 uses
  %i.ax = extractelement <2 x double> %i.at, i64 0
  %i.ay = call double @llvm.fmuladd.f64(double %i.aw, double %i.ao, double 0.000000e+00)
  %i.az = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ba = insertelement <2 x double> %i.az, double %i.aw, i64 1 ; 2 uses
  %i.bb = load <2 x double>, ptr %i.q, align 8, !tbaa !16, !noalias !52 ; 6 uses
  %i.bc = insertelement <2 x double> poison, double %i.ao, i64 0 ; 2 uses
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.bd, <2 x double> zeroinitializer)
  %13 = insertelement <2 x double> %i.bb, double 0.000000e+00, i64 1
  %i.bf = insertelement <2 x double> poison, double %i.au, i64 0
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.bg, <2 x double> zeroinitializer)
  %14 = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer
  %15 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %14, <2 x double> %i.bb, <2 x double> %i.bh) ; 2 uses
  %i.bi = fneg <2 x double> %15
  %i.bj = shufflevector <2 x double> %15, <2 x double> %i.bi, <2 x i32> <i32 0, i32 3>
  %i.bk = load <2 x double>, ptr %i.t, align 8, !tbaa !16, !noalias !52 ; 5 uses
  %i.bl = extractelement <2 x double> %i.bk, i64 0
  %i.bm = fneg double %i.bl                       ; 2 uses
  %i.bn = call double @llvm.fmuladd.f64(double %i.aw, double %i.bm, double 0.000000e+00)
  %i.bo = extractelement <2 x double> %i.bk, i64 1 ; 2 uses
  %i.bp = call noundef double @llvm.fmuladd.f64(double %i.av, double %i.bo, double %i.bn)
  %16 = call noundef double @llvm.fmuladd.f64(double %i.ax, double %i.bo, double %i.ay)
  %17 = fneg double %i.bp
  %i.bq = shufflevector <2 x double> <double poison, double -0.000000e+00>, <2 x double> %i.bk, <2 x i32> <i32 3, i32 1>
  %i.br = insertelement <2 x double> poison, double %i.as, i64 0
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> %i.bk, <2 x double> %i.be) ; 3 uses
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> %i.bb, <2 x i32> <i32 1, i32 2>
  %i.bv = fneg <2 x double> %i.bu                 ; 2 uses
  %i.bw = shufflevector <2 x double> %i.bb, <2 x double> %i.bt, <2 x i32> <i32 1, i32 2>
  %i.bx = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.aw, i64 1
  %i.bz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.by, <2 x double> zeroinitializer) ; 2 uses
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> %i.bb, <2 x i32> <i32 0, i32 3>
  %i.cb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %13, <2 x double> %i.bq, <2 x double> %i.ca) ; 2 uses
  %i.cc = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.bz, <2 x i32> <i32 3, i32 1>
  %i.cd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.bv, <2 x double> %i.cc)
  %i.ce = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.at, <2 x double> %i.cd) ; 3 uses
  %i.cf = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cg = fdiv <2 x double> %i.bj, %i.cf          ; 2 uses
  %i.ch = shufflevector <2 x double> %i.ce, <2 x double> %i.bt, <2 x i32> <i32 1, i32 2>
  %i.ci = fdiv <2 x double> %i.ch, %i.cf          ; 2 uses
  %i.cj = insertelement <2 x double> %i.bv, double %16, i64 1
  %i.ck = fdiv <2 x double> %i.cj, %i.cf
  %i.cl = insertelement <2 x double> %i.cb, double %17, i64 1
  %i.cm = fdiv <2 x double> %i.cl, %i.cf
  %i.cn = extractelement <2 x double> %i.cg, i64 0
  %i.co = fadd double %i.cn, 0.000000e+00
  %i.cp = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.ci, <2 x i32> <i32 3, i32 1>
  %i.cq = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cs = insertelement <2 x double> %i.aq, double %i.ar, i64 1
  %i.ct = load double, ptr %i.w, align 8, !tbaa !54
  %i.cu = shufflevector <2 x double> %i.at, <2 x double> %i.cg, <2 x i32> <i32 1, i32 3>
  %i.cv = insertelement <2 x double> %i.bc, double %i.ap, i64 1
  %i.cw = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.co, i64 1
  %i.cx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %i.cv, <2 x double> %i.cw)
  %i.cy = shufflevector <2 x double> %i.at, <2 x double> %i.ci, <2 x i32> <i32 0, i32 2>
  %i.cz = insertelement <2 x double> %i.bk, double %i.ae, i64 1
  %i.da = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.cz, <2 x double> %i.cx) ; 2 uses
  %i.db = insertelement <2 x double> %i.ce, double %i.ct, i64 1
  %i.dc = fdiv <2 x double> %i.da, %i.db          ; 2 uses
  %i.dd = shufflevector <2 x double> <double -0.000000e+00, double poison>, <2 x double> %i.dc, <2 x i32> <i32 0, i32 2>
  %i.de = fsub <2 x double> %i.cp, %i.dd
  %i.df = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.cr, <2 x double> %i.de)
  %i.dg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> %i.ag, <2 x double> %i.df) ; 3 uses
  %i.dh = fdiv <2 x double> %i.dg, %i.cs          ; 3 uses
  %shift = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.dh, %shift
  %i.di = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.dj = extractelement <2 x double> %i.dc, i64 1 ; 2 uses
  %i.dk = fadd double %i.dj, %i.di                ; 2 uses
  %i.dl = fdiv double %i.dj, %i.dk
  %i.dm = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = fdiv <2 x double> %i.dh, %i.dn
  %i.dp = extractelement <2 x double> %i.dg, i64 0 ; 2 uses
  %i.dq = fcmp olt double %i.dp, 0.000000e+00
  %i.dr = extractelement <2 x double> %i.dg, i64 1 ; 2 uses
  %i.ds = fcmp olt double %i.dr, 0.000000e+00
  %or.cond = or i1 %i.dq, %i.ds
  %i.dt = extractelement <2 x double> %i.da, i64 1 ; 2 uses
  %i.du = fcmp olt double %i.dt, 0.000000e+00
  %or.cond5 = or i1 %i.du, %or.cond
  br i1 %or.cond5, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dv = load double, ptr %i.x, align 16, !tbaa !55
  %i.dw = load double, ptr %i.y, align 16, !tbaa !55
  %i.dx = load double, ptr %i.z, align 16, !tbaa !55
  %i.dy = call double @llvm.fmuladd.f64(double %i.dt, double %i.dx, double 0.000000e+00)
  %i.dz = call double @llvm.fmuladd.f64(double %i.dr, double %i.dw, double %i.dy)
  %i.ea = call noundef double @llvm.fmuladd.f64(double %i.dp, double %i.dv, double %i.dz) ; 2 uses
  %i.eb = invoke noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.j unwind label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ec = mul nsw i32 %i.eb, %.0
  %i.ed = add nsw i32 %i.ec, %i.ab
  %i.ee = sext i32 %i.ed to i64
  %i.ef = load ptr, ptr @zbuffer, align 8, !tbaa !13
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ee
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !16
  %i.ei = fcmp ugt double %i.ea, %i.eh
  br i1 %i.ei, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  store <2 x double> %i.do, ptr %12, align 16, !tbaa !16
  store double %i.dl, ptr %.sroa.11.0..sroa_idx, align 16, !tbaa !16
  %i.ej = load ptr, ptr %10, align 8, !tbaa !57
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = invoke i48 %i.ek(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull byval(%struct.vec.0) align 8 %12)
          to label %bb.l unwind label %.loopexit  ; 2 uses

bb.l:                                             ; preds = %bb.k
  store i48 %i.el, ptr %11, align 8
  %i.em = trunc i48 %i.el to i1
  br i1 %i.em, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.en = invoke noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.n unwind label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.eo = mul nsw i32 %i.en, %.0
  %i.ep = add nsw i32 %i.eo, %i.ab
  %i.eq = sext i32 %i.ep to i64
  %i.er = load ptr, ptr @zbuffer, align 8, !tbaa !13
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.eq
  store double %i.ea, ptr %i.es, align 8, !tbaa !16
  invoke void @_ZN8TGAImage3setEiiRK8TGAColor(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.ab, i32 noundef %.0, ptr noundef nonnull align 1 dereferenceable(5) %i.aa)
          to label %bb.o unwind label %.loopexit

bb.o:                                             ; preds = %bb.n, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j, %bb.h
  %i.et = add nuw nsw i32 %.0, 1
  br label %bb.e, !llvm.loop !50

._crit_edge:                                      ; preds = %bb.g, %bb.c
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.b
  ret void

.loopexit:                                        ; preds = %bb.e, %bb.i, %bb.k, %bb.m, %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.r

.loopexit.split-lp:                               ; preds = %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.eu = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.eu) #19
  unreachable
}

declare noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4u(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #15

declare noundef i32 @_ZNK8TGAImage6heightEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #14

declare void @_ZN8TGAImage3setEiiRK8TGAColor(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, i32 noundef, ptr noundef nonnull align 1 dereferenceable(5)) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #15

; Function Attrs: nounwind
declare !callback !21 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #15

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_our_gl.cpp() #16 section ".text.startup" {
bb.a:
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIdSaIdEED2Ev, ptr nonnull @zbuffer, ptr nonnull @__dso_handle) #15 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #8

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 double", !10, i64 0}
!12 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!13 = !{!12, !11, i64 0}
!14 = !{!12, !11, i64 16}
end_hunk_1
