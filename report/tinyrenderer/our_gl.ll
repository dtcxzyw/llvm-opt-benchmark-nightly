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
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.1065.0.copyload = load double, ptr %.sroa.1065.0..sroa_idx, align 8, !tbaa !16
  %i.d = load double, ptr %i.a, align 8, !tbaa !16, !noalias !26 ; 2 uses
  %i.e = fsub double %.sroa.1065.0.copyload, %i.d ; 3 uses
  %i.f = tail call double @llvm.fmuladd.f64(double %i.e, double %i.e, double 0.000000e+00)
  %i.g = load <2 x double>, ptr %0, align 8, !tbaa !16
  %i.h = load <2 x double>, ptr %1, align 8, !tbaa !16, !noalias !26 ; 3 uses
  %i.i = fsub <2 x double> %i.g, %i.h             ; 3 uses
  %i.j = extractelement <2 x double> %i.i, i64 1  ; 2 uses
  %i.k = tail call double @llvm.fmuladd.f64(double %i.j, double %i.j, double %i.f)
  %i.l = extractelement <2 x double> %i.i, i64 0  ; 2 uses
  %i.m = tail call noundef double @llvm.fmuladd.f64(double %i.l, double %i.l, double %i.k)
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.m) ; 2 uses
  %i.n = extractelement <2 x double> %i.h, i64 0
  %i.o = extractelement <2 x double> %i.h, i64 1
  %i.p = insertelement <2 x double> poison, double %sqrt.i.i, i64 0
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = fdiv <2 x double> %i.i, %i.q             ; 13 uses
  %i.s = extractelement <2 x double> %i.r, i64 0
  %i.t = fneg double %i.d                         ; 2 uses
  %i.u = fneg double %i.o                         ; 2 uses
  %i.v = fneg double %i.n                         ; 2 uses
  %i.w = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.t, i64 0 ; 2 uses
  %i.x = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.u, i64 0 ; 2 uses
  %i.y = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.v, i64 0 ; 2 uses
  %i.z = insertelement <2 x double> poison, double %i.t, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = insertelement <2 x double> %i.r, double 0.000000e+00, i64 0
  %i.ac = insertelement <2 x double> poison, double %i.u, i64 0
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = shufflevector <2 x double> %i.r, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.af = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = load double, ptr %i.c, align 8, !tbaa !27, !noalias !28
  %i.ai = load <2 x double>, ptr %i.b, align 8, !tbaa !16, !noalias !28
  %i.aj = load <2 x double>, ptr %2, align 8, !tbaa !16, !noalias !28 ; 2 uses
  %i.ak = fneg <2 x double> %i.r
  %i.al = fmul <2 x double> %i.ai, %i.ak
  %i.am = extractelement <2 x double> %i.aj, i64 0
  %i.an = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ao = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fdiv double %i.e, %sqrt.i.i             ; 7 uses
  %i.aq = fneg double %i.ap
  %i.ar = fmul double %i.am, %i.aq
  %i.as = insertelement <2 x double> %i.an, double %i.ap, i64 1
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.as, <2 x double> %i.al) ; 3 uses
  %i.au = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.s, double %i.ar) ; 3 uses
  %i.av = extractelement <2 x double> %i.at, i64 0 ; 2 uses
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.av, double %i.av, double 0.000000e+00)
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.au, double %i.au, double %i.aw)
  %i.ay = extractelement <2 x double> %i.at, i64 1 ; 2 uses
  %i.az = tail call noundef double @llvm.fmuladd.f64(double %i.ay, double %i.ay, double %i.ax)
  %sqrt.i.i1 = tail call noundef double @llvm.sqrt.f64(double %i.az) ; 2 uses
  %i.ba = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.ap, i64 1
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.aa, <2 x double> <double 1.000000e+00, double 0.000000e+00>)
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ad, <2 x double> %i.bb)
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.ag, <2 x double> %i.bc) ; 2 uses
  %i.be = fdiv double %i.au, %sqrt.i.i1           ; 6 uses
  %i.bf = insertelement <2 x double> poison, double %sqrt.i.i1, i64 0
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = fdiv <2 x double> %i.at, %i.bg          ; 8 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 0 ; 2 uses
  %i.bj = fneg double %i.be
  %i.bk = extractelement <2 x double> %i.bh, i64 1
  %i.bl = fneg <2 x double> %i.bh
  %i.bm = fmul <2 x double> %i.r, %i.bl
  %i.bn = shufflevector <2 x double> %i.bh, <2 x double> %i.r, <2 x i32> <i32 1, i32 2>
  %i.bo = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %i.be, i64 1
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.bp, <2 x double> %i.bm) ; 3 uses
  %i.br = extractelement <2 x double> %i.bq, i64 1 ; 2 uses
  %i.bs = extractelement <2 x double> %i.bq, i64 0 ; 2 uses
  %i.bt = extractelement <2 x double> %i.r, i64 1
  %i.bu = fadd double %i.ap, 0.000000e+00
  %i.bv = fmul double %i.ap, %i.bj
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bi, double %i.bv) ; 2 uses
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.br, double %i.br, double 0.000000e+00)
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bs, double %i.bx)
  %i.bz = insertelement <2 x double> %i.r, double %i.bw, i64 0 ; 2 uses
  %i.ca = insertelement <2 x double> %i.bz, double 0.000000e+00, i64 1
  %i.cb = insertelement <2 x double> poison, double %i.by, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.bu, i64 1
  %i.cd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.ca, <2 x double> %i.cc) ; 2 uses
  %i.ce = extractelement <2 x double> %i.cd, i64 0
  %sqrt.i.i2 = tail call noundef double @llvm.sqrt.f64(double %i.ce) ; 2 uses
  %i.cf = insertelement <2 x double> poison, double %sqrt.i.i2, i64 0
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ch = fdiv <2 x double> %i.bq, %i.cg          ; 7 uses
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cj = insertelement <2 x double> %i.ci, double %i.ap, i64 1
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.w, <2 x double> zeroinitializer) ; 2 uses
  %foldExtExtBinop = fadd <2 x double> %i.r, %i.ck
  %i.cl = shufflevector <2 x double> %foldExtExtBinop, <2 x double> %i.cd, <2 x i32> <i32 1, i32 3>
  %i.cm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> zeroinitializer, <2 x double> %i.cl)
  %i.cn = shufflevector <2 x double> %i.ch, <2 x double> %i.r, <2 x i32> <i32 0, i32 3>
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.x, <2 x double> %i.ck)
  %i.cp = fdiv double %i.bw, %sqrt.i.i2           ; 2 uses
  %i.cq = insertelement <2 x double> poison, double %i.cp, i64 0 ; 2 uses
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> %i.r, <2 x i32> <i32 0, i32 2>
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> %i.y, <2 x double> %i.co)
  %i.ct = shufflevector <2 x double> %i.bh, <2 x double> %i.ch, <2 x i32> <i32 0, i32 3>
  %i.cu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.w, <2 x double> zeroinitializer) ; 2 uses
  %shift = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop82 = fadd <2 x double> %i.ch, %shift
  %i.cv = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = insertelement <2 x double> poison, double %i.be, i64 0
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> %i.ch, <2 x i32> <i32 0, i32 2>
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.x, <2 x double> %i.cu)
  %i.cz = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.da = insertelement <2 x double> %i.cz, double %i.cp, i64 1
  %i.db = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.da, <2 x double> %i.y, <2 x double> %i.cy)
  %i.dc = shufflevector <2 x double> %i.ch, <2 x double> %i.bh, <2 x i32> <i32 1, i32 2>
  %i.dd = fadd <2 x double> %i.dc, zeroinitializer
  %i.de = insertelement <2 x double> %i.ch, double %i.be, i64 1
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> zeroinitializer, <2 x double> %i.dd) ; 2 uses
  %i.dg = shufflevector <2 x double> %foldExtExtBinop82, <2 x double> %i.df, <2 x i32> <i32 0, i32 2>
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cv, <2 x double> zeroinitializer, <2 x double> %i.dg)
  %i.di = tail call double @llvm.fmuladd.f64(double %i.bi, double 0.000000e+00, double 0.000000e+00) ; 2 uses
  %i.dj = fadd double %i.be, %i.di
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.be, double 0.000000e+00, double %i.di)
  %i.dl = fadd double %i.bk, %i.dk
  store double %i.dl, ptr @ModelView, align 8
  %i.dm = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dn = insertelement <2 x double> %i.df, double %i.dj, i64 0
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> zeroinitializer, <2 x double> %i.dn)
  store <2 x double> %i.do, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 8), align 8
  store <2 x double> %i.db, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 24), align 8
  store <2 x double> %i.dh, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 40), align 8
  store <2 x double> %i.cs, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 56), align 8
  store <2 x double> %i.cm, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 72), align 8
  %i.dp = extractelement <2 x double> %i.bd, i64 1
  store double %i.dp, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 88), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @ModelView, i64 96), i8 0, i64 24, i1 false)
  %i.dq = extractelement <2 x double> %i.bd, i64 0
  store double %i.dq, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 120), align 8, !tbaa !18
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
  %3 = alloca [3 x %struct.vec], align 16         ; 9 uses
  %4 = alloca %struct.mat.2, align 8              ; 9 uses
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
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 80
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
  %i.aj = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Viewport, i64 56), align 8
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
  %i.au = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.at, <4 x double> %i.ab, <4 x double> %i.as) ; 8 uses
  %i.av = load <4 x double>, ptr %i.k, align 16, !tbaa !16, !alias.scope !44
  %i.aw = insertelement <4 x double> poison, double %i.n, i64 0
  %i.ax = shufflevector <4 x double> %i.aw, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ay = fdiv <4 x double> %i.av, %i.ax          ; 6 uses
  %6 = shufflevector <4 x double> %i.ay, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  store <2 x double> %6, ptr %5, align 16, !tbaa !16, !alias.scope !44
  %7 = shufflevector <4 x double> %i.ay, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  store <2 x double> %7, ptr %i.k, align 16, !tbaa !16, !alias.scope !44
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
  %i.bl = extractelement <4 x double> %i.au, i64 1 ; 2 uses
  store double %i.bl, ptr %4, align 8, !tbaa !47
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bm = extractelement <4 x double> %i.au, i64 0
  %9 = shufflevector <4 x double> %i.au, <4 x double> poison, <2 x i32> <i32 0, i32 1> ; 3 uses
  %10 = insertelement <2 x double> %9, double 1.000000e+00, i64 1
  store <2 x double> %10, ptr %8, align 8, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bo = extractelement <4 x double> %i.au, i64 3 ; 3 uses
  store double %i.bo, ptr %i.bn, align 8, !tbaa !47
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bp = extractelement <4 x double> %i.au, i64 2 ; 2 uses
  %12 = shufflevector <4 x double> %i.au, <4 x double> poison, <2 x i32> <i32 2, i32 3> ; 3 uses
  %13 = insertelement <2 x double> %12, double 1.000000e+00, i64 1
  store <2 x double> %13, ptr %11, align 8, !tbaa !16
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %15 = extractelement <2 x double> %i.bk, i64 1  ; 3 uses
  store double %15, ptr %14, align 8, !tbaa !47
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 56
  %16 = extractelement <2 x double> %i.bk, i64 0  ; 2 uses
  %17 = insertelement <2 x double> %i.bk, double 1.000000e+00, i64 1
  store <2 x double> %17, ptr %i.bq, align 8, !tbaa !16
  %i.br = fneg double %15
  %i.bs = fsub double 0.000000e+00, %15
  %i.bt = fadd double %i.bo, %i.bs
  %i.bu = fneg double %i.bt
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.br, double 0.000000e+00)
  %i.bw = tail call noundef double @llvm.fmuladd.f64(double %i.bo, double %16, double %i.bv)
  %i.bx = fadd double %i.bw, 0.000000e+00
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bu, double %i.bx)
  %i.bz = fsub double 0.000000e+00, %16
  %i.ca = fadd double %i.bp, %i.bz
  %i.cb = tail call noundef double @llvm.fmuladd.f64(double %i.bl, double %i.ca, double %i.by)
  %i.cc = fcmp olt double %i.cb, 1.000000e+00
  br i1 %i.cc, label %bb.b, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.cd = shufflevector <4 x double> %i.au, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ce = fcmp olt <4 x double> %i.au, %i.cd      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.cf = shufflevector <4 x i1> %i.ce, <4 x i1> poison, <2 x i32> <i32 2, i32 3>
  %i.cg = select <2 x i1> %i.cf, <2 x double> %12, <2 x double> %9 ; 2 uses
  %i.ch = fcmp olt <2 x double> %i.bk, %i.cg
  %i.ci = select <2 x i1> %i.ch, <2 x double> %i.bk, <2 x double> %i.cg ; 2 uses
  %i.cj = extractelement <2 x double> %i.ci, i64 1
  store double %i.cj, ptr %i.a, align 8, !tbaa !16
  %i.ck = extractelement <2 x double> %i.ci, i64 0
  store double %i.ck, ptr %i.c, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.cl = shufflevector <4 x i1> %i.ce, <4 x i1> poison, <2 x i32> <i32 0, i32 1>
  %i.cm = select <2 x i1> %i.cl, <2 x double> %12, <2 x double> %9 ; 2 uses
  %i.cn = fcmp olt <2 x double> %i.cm, %i.bk
  %i.co = select <2 x i1> %i.cn, <2 x double> %i.bk, <2 x double> %i.cm ; 2 uses
  %i.cp = extractelement <2 x double> %i.co, i64 1
  store double %i.cp, ptr %i.b, align 8, !tbaa !16
  %i.cq = extractelement <2 x double> %i.co, i64 0
  store double %i.cq, ptr %i.d, align 8, !tbaa !16
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
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 80
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %.050105 = phi i32 [ %i.o, %.lr.ph ], [ %i.an, %bb.g ] ; 2 uses
  %i.ac = add i32 %.050105, %.sroa.speculated99   ; 4 uses
  %i.ad = load double, ptr %5, align 8, !tbaa !16
  %i.ae = fptosi double %i.ad to i32
  %.sroa.speculated87 = call i32 @llvm.smax.i32(i32 %i.ae, i32 0)
  %i.af = sitofp i32 %i.ac to double              ; 2 uses
  %i.ag = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = insertelement <2 x double> poison, double %i.af, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.p, %bb.d
  %.0 = phi i32 [ %.sroa.speculated87, %bb.d ], [ %i.fa, %bb.p ] ; 6 uses
  %i.aj = load double, ptr %6, align 8, !tbaa !16
  %i.ak = invoke noundef i32 @_ZNK8TGAImage6heightEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.f unwind label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.al = fptosi double %i.aj to i32
  %i.am = add nsw i32 %i.ak, -1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.am, i32 %i.al)
  %.not54 = icmp sgt i32 %.0, %.sroa.speculated
  br i1 %.not54, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = add i32 %.050105, 1                     ; 2 uses
  %i.ao = load i32, ptr %i.b, align 4, !tbaa !51
  %.not53 = icmp ugt i32 %i.an, %i.ao
  br i1 %.not53, label %._crit_edge, label %bb.d

bb.h:                                             ; preds = %bb.f
  %i.ap = uitofp nneg i32 %.0 to double           ; 2 uses
  %i.aq = load double, ptr %i.v, align 8, !tbaa !53
  %i.ar = load double, ptr %i.w, align 8, !tbaa !53
  %i.as = load <2 x double>, ptr %7, align 8, !tbaa !16, !noalias !54 ; 7 uses
  %i.at = load double, ptr %i.p, align 8, !tbaa !16, !noalias !54 ; 3 uses
  %i.au = fneg double %i.at
  %i.av = load double, ptr %i.r, align 8, !tbaa !16, !noalias !54 ; 4 uses
  %i.aw = extractelement <2 x double> %i.as, i64 1
  %i.ax = load double, ptr %i.u, align 8, !tbaa !16, !noalias !54 ; 4 uses
  %i.ay = extractelement <2 x double> %i.as, i64 0
  %i.az = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.ax, i64 0
  %i.ba = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bb = insertelement <2 x double> %i.ba, double %i.av, i64 1 ; 2 uses
  %i.bc = load <2 x double>, ptr %i.q, align 8, !tbaa !16, !noalias !54 ; 6 uses
  %i.bd = extractelement <2 x double> %i.bc, i64 1
  %i.be = load double, ptr %i.t, align 8, !tbaa !16, !noalias !54
  %i.bf = load <2 x double>, ptr %i.s, align 8, !tbaa !16, !noalias !54 ; 2 uses
  %i.bg = fneg <2 x double> %i.bf                 ; 4 uses
  %i.bh = extractelement <2 x double> %i.bg, i64 1
  %i.bi = call double @llvm.fmuladd.f64(double %i.av, double %i.bh, double 0.000000e+00)
  %i.bj = call noundef double @llvm.fmuladd.f64(double %i.aw, double %i.ax, double %i.bi)
  %i.bk = extractelement <2 x double> %i.bg, i64 0 ; 2 uses
  %i.bl = call double @llvm.fmuladd.f64(double %i.av, double %i.bk, double 0.000000e+00)
  %i.bm = call noundef double @llvm.fmuladd.f64(double %i.ay, double %i.ax, double %i.bl)
  %i.bn = fneg double %i.bj
  %i.bo = call double @llvm.fmuladd.f64(double %i.bd, double %i.bk, double 0.000000e+00)
  %i.bp = call noundef double @llvm.fmuladd.f64(double %i.at, double %i.ax, double %i.bo)
  %i.bq = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> %i.bc, <2 x i32> <i32 0, i32 2>
  %i.bs = fneg <2 x double> %i.br                 ; 2 uses
  %i.bt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.bg, <2 x double> zeroinitializer) ; 2 uses
  %i.bu = insertelement <2 x double> %i.bc, double 0.000000e+00, i64 1
  %i.bv = shufflevector <2 x double> %i.bt, <2 x double> %i.bc, <2 x i32> <i32 1, i32 3>
  %i.bw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.az, <2 x double> %i.bv) ; 2 uses
  %i.bx = insertelement <2 x double> poison, double %i.au, i64 0
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.by, <2 x double> zeroinitializer)
  %i.ca = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.bc, <2 x double> %i.bz) ; 2 uses
  %i.cc = fneg <2 x double> %i.cb
  %i.cd = shufflevector <2 x double> %i.cb, <2 x double> %i.cc, <2 x i32> <i32 0, i32 3>
  %i.ce = extractelement <2 x double> %i.bt, i64 0
  %i.cf = call noundef double @llvm.fmuladd.f64(double %i.at, double %i.be, double %i.ce) ; 2 uses
  %i.cg = call double @llvm.fmuladd.f64(double %i.cf, double %i.av, double 0.000000e+00)
  %i.ch = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.cg, i64 0
  %i.ci = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.bs, <2 x double> %i.ch)
  %i.cj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.as, <2 x double> %i.ci) ; 3 uses
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cl = fdiv <2 x double> %i.cd, %i.ck          ; 2 uses
  %i.cm = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cn = insertelement <2 x double> %i.cm, double %i.cf, i64 1
  %i.co = fdiv <2 x double> %i.cn, %i.ck          ; 2 uses
  %i.cp = insertelement <2 x double> %i.bs, double %i.bm, i64 1
  %i.cq = fdiv <2 x double> %i.cp, %i.ck
  %i.cr = insertelement <2 x double> %i.bw, double %i.bn, i64 1
  %i.cs = fdiv <2 x double> %i.cr, %i.ck
  %i.ct = extractelement <2 x double> %i.cl, i64 0
  %i.cu = fadd double %i.ct, 0.000000e+00
  %i.cv = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.co, <2 x i32> <i32 3, i32 1>
  %i.cw = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.cz = insertelement <2 x double> %i.cy, double %i.ar, i64 1
  %i.da = load double, ptr %i.x, align 8, !tbaa !53
  %i.db = shufflevector <2 x double> %i.as, <2 x double> %i.cl, <2 x i32> <i32 1, i32 3>
  %i.dc = insertelement <2 x double> %i.bg, double %i.ap, i64 1
  %i.dd = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.cu, i64 1
  %i.de = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.db, <2 x double> %i.dc, <2 x double> %i.dd)
  %i.df = shufflevector <2 x double> %i.as, <2 x double> %i.co, <2 x i32> <i32 0, i32 2>
  %i.dg = shufflevector <2 x double> %i.ai, <2 x double> %i.bf, <2 x i32> <i32 3, i32 1>
  %i.dh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.dg, <2 x double> %i.de) ; 2 uses
  %i.di = insertelement <2 x double> %i.cj, double %i.da, i64 1
  %i.dj = fdiv <2 x double> %i.dh, %i.di          ; 2 uses
  %i.dk = shufflevector <2 x double> <double -0.000000e+00, double poison>, <2 x double> %i.dj, <2 x i32> <i32 0, i32 2>
  %i.dl = fsub <2 x double> %i.cv, %i.dk
  %i.dm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %i.cx, <2 x double> %i.dl)
  %i.dn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.ah, <2 x double> %i.dm) ; 3 uses
  %i.do = fdiv <2 x double> %i.dn, %i.cz          ; 3 uses
  %shift = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.do, %shift
  %i.dp = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.dq = extractelement <2 x double> %i.dj, i64 1 ; 2 uses
  %i.dr = fadd double %i.dq, %i.dp                ; 2 uses
  %i.ds = fdiv double %i.dq, %i.dr
  %i.dt = insertelement <2 x double> poison, double %i.dr, i64 0
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dv = fdiv <2 x double> %i.do, %i.du
  %i.dw = extractelement <2 x double> %i.dn, i64 0 ; 2 uses
  %i.dx = fcmp olt double %i.dw, 0.000000e+00
  %i.dy = extractelement <2 x double> %i.dn, i64 1 ; 2 uses
  %i.dz = fcmp olt double %i.dy, 0.000000e+00
  %or.cond = or i1 %i.dx, %i.dz
  %i.ea = extractelement <2 x double> %i.dh, i64 1 ; 2 uses
  %i.eb = fcmp olt double %i.ea, 0.000000e+00
  %or.cond5 = or i1 %i.eb, %or.cond
  br i1 %or.cond5, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ec = load double, ptr %i.y, align 16, !tbaa !55
  %i.ed = load double, ptr %i.z, align 16, !tbaa !55
  %i.ee = load double, ptr %i.aa, align 16, !tbaa !55
  %i.ef = call double @llvm.fmuladd.f64(double %i.ea, double %i.ee, double 0.000000e+00)
  %i.eg = call double @llvm.fmuladd.f64(double %i.dy, double %i.ed, double %i.ef)
  %i.eh = call noundef double @llvm.fmuladd.f64(double %i.dw, double %i.ec, double %i.eg) ; 2 uses
  %i.ei = invoke noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.j unwind label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ej = mul nsw i32 %i.ei, %.0
  %i.ek = add nsw i32 %i.ej, %i.ac
  %i.el = sext i32 %i.ek to i64
  %i.em = load ptr, ptr @zbuffer, align 8, !tbaa !13
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.el
  %i.eo = load double, ptr %i.en, align 8, !tbaa !16
  %i.ep = fcmp ugt double %i.eh, %i.eo
  br i1 %i.ep, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  store <2 x double> %i.dv, ptr %12, align 16, !tbaa !16
  store double %i.ds, ptr %.sroa.11.0..sroa_idx, align 16, !tbaa !16
  %i.eq = load ptr, ptr %10, align 8, !tbaa !57
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = invoke i48 %i.er(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull byval(%struct.vec.0) align 8 %12)
          to label %bb.l unwind label %.loopexit  ; 2 uses

bb.l:                                             ; preds = %bb.k
  store i48 %i.es, ptr %11, align 8
  %i.et = trunc i48 %i.es to i1
  br i1 %i.et, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.eu = invoke noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.n unwind label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.ev = mul nsw i32 %i.eu, %.0
  %i.ew = add nsw i32 %i.ev, %i.ac
  %i.ex = sext i32 %i.ew to i64
  %i.ey = load ptr, ptr @zbuffer, align 8, !tbaa !13
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.ex
  store double %i.eh, ptr %i.ez, align 8, !tbaa !16
  invoke void @_ZN8TGAImage3setEiiRK8TGAColor(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.ac, i32 noundef %.0, ptr noundef nonnull align 1 dereferenceable(5) %i.ab)
          to label %bb.o unwind label %.loopexit

bb.o:                                             ; preds = %bb.n, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j, %bb.h
  %i.fa = add nuw nsw i32 %.0, 1
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
  %i.fb = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.fb) #19
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
!15 = !{!"double", !6, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"_ZTS3vecILi3EE", !15, i64 0, !15, i64 8, !15, i64 16}
!18 = !{!6, !6, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{i64 2, i64 -1, i64 -1, i1 true}
!21 = !{!20}
!22 = distinct !{!22, !"_ZmiILi3EE3vecIXT_EERKS1_S3_"}
!23 = distinct !{!23, !22, !"_ZmiILi3EE3vecIXT_EERKS1_S3_: argument 0"}
!24 = distinct !{!24, !"_Z5crossRK3vecILi3EES2_"}
!25 = distinct !{!25, !24, !"_Z5crossRK3vecILi3EES2_: argument 0"}
!26 = !{!23}
!27 = !{!17, !15, i64 16}
!28 = !{!25}
!29 = distinct !{!29, !19, !31, !32}
!30 = distinct !{!30, !19, !32, !31}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = !{!12, !11, i64 8}
!34 = distinct !{!34, !"_ZdvILi4EE3vecIXT_EERKS1_RKd"}
!35 = distinct !{!35, !34, !"_ZdvILi4EE3vecIXT_EERKS1_RKd: argument 0"}
!36 = distinct !{!36, !"_ZdvILi4EE3vecIXT_EERKS1_RKd"}
!37 = distinct !{!37, !36, !"_ZdvILi4EE3vecIXT_EERKS1_RKd: argument 0"}
!38 = distinct !{!38, !"_ZdvILi4EE3vecIXT_EERKS1_RKd"}
!39 = distinct !{!39, !38, !"_ZdvILi4EE3vecIXT_EERKS1_RKd: argument 0"}
!40 = distinct !{!40, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!41 = distinct !{!41, !40, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!42 = !{i64 0, i64 8, !16, i64 8, i64 8, !16, i64 16, i64 8, !16, i64 24, i64 8, !16}
!43 = !{!35}
!44 = !{!37}
!45 = !{!39}
!46 = !{!41}
!47 = !{!17, !15, i64 0}
!48 = distinct !{!48, !"_ZNK3matILi3ELi3EE16invert_transposeEv"}
!49 = distinct !{!49, !48, !"_ZNK3matILi3ELi3EE16invert_transposeEv: argument 0"}
!50 = distinct !{!50, !19}
!51 = !{!7, !7, i64 0}
!52 = !{!"_ZTS3vecILi4EE", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!53 = !{!52, !15, i64 24}
!54 = !{!49}
!55 = !{!52, !15, i64 16}
!56 = !{!"vtable pointer", !5, i64 0}
!57 = !{!56, !56, i64 0}
end_hunk_0
