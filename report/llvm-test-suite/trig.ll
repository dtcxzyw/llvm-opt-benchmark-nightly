Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/trig?download=true
inline.NumInlined: 9
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.HPointStruct = type { double, double, double, double }
%struct.ObjPointStruct = type { double, double, double, double, double, double }

@.str = private unnamed_addr constant [30 x i8] c" [[ %.2f, %.2f, %.2f, %.2f] \0A\00", align 1, !guid !8
@.str.1 = private unnamed_addr constant [30 x i8] c"  [ %.2f, %.2f, %.2f, %.2f] \0A\00", align 1, !guid !9
@.str.2 = private unnamed_addr constant [30 x i8] c"  [ %.2f, %.2f, %.2f, %.2f]]\0A\00", align 1, !guid !10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @MultMatrixMatrix(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 !guid !14 {
bb.a:
  %gep.1 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %gep.2 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %gep.3 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %invariant.gep.1 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %gep.1.1 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %gep.2.1 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %gep.3.1 = getelementptr inbounds nuw i8, ptr %1, i64 104
  %invariant.gep.2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %gep.1.2 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %gep.2.2 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %gep.3.2 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %invariant.gep.3 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %gep.1.3 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %gep.2.3 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %gep.3.3 = getelementptr inbounds nuw i8, ptr %1, i64 120
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.preheader ] ; 3 uses
  %i.a = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %indvars.iv ; 8 uses
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv ; 7 uses
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !12
  %i.c = load double, ptr %i.b, align 8, !tbaa !12
  %i.d = load double, ptr %1, align 8, !tbaa !12
  %i.e = tail call double @llvm.fmuladd.f64(double %i.c, double %i.d, double 0.000000e+00) ; 2 uses
  store double %i.e, ptr %i.a, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !12
  %i.h = load double, ptr %gep.1, align 8, !tbaa !12
  %i.i = tail call double @llvm.fmuladd.f64(double %i.g, double %i.h, double %i.e) ; 2 uses
  store double %i.i, ptr %i.a, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !12
  %i.l = load double, ptr %gep.2, align 8, !tbaa !12
  %i.m = tail call double @llvm.fmuladd.f64(double %i.k, double %i.l, double %i.i) ; 2 uses
  store double %i.m, ptr %i.a, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !12
  %i.p = load double, ptr %gep.3, align 8, !tbaa !12
  %i.q = tail call double @llvm.fmuladd.f64(double %i.o, double %i.p, double %i.m)
  store double %i.q, ptr %i.a, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store double 0.000000e+00, ptr %i.r, align 8, !tbaa !12
  %i.s = load double, ptr %i.b, align 8, !tbaa !12
  %i.t = load double, ptr %invariant.gep.1, align 8, !tbaa !12
  %i.u = tail call double @llvm.fmuladd.f64(double %i.s, double %i.t, double 0.000000e+00) ; 2 uses
  store double %i.u, ptr %i.r, align 8, !tbaa !12
  %i.v = load double, ptr %i.f, align 8, !tbaa !12
  %i.w = load double, ptr %gep.1.1, align 8, !tbaa !12
  %i.x = tail call double @llvm.fmuladd.f64(double %i.v, double %i.w, double %i.u) ; 2 uses
  store double %i.x, ptr %i.r, align 8, !tbaa !12
  %i.y = load double, ptr %i.j, align 8, !tbaa !12
  %i.z = load double, ptr %gep.2.1, align 8, !tbaa !12
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.y, double %i.z, double %i.x) ; 2 uses
  store double %i.aa, ptr %i.r, align 8, !tbaa !12
  %i.ab = load double, ptr %i.n, align 8, !tbaa !12
  %i.ac = load double, ptr %gep.3.1, align 8, !tbaa !12
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.ac, double %i.aa)
  store double %i.ad, ptr %i.r, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  store double 0.000000e+00, ptr %i.ae, align 8, !tbaa !12
  %i.af = load double, ptr %i.b, align 8, !tbaa !12
  %i.ag = load double, ptr %invariant.gep.2, align 8, !tbaa !12
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.af, double %i.ag, double 0.000000e+00) ; 2 uses
  store double %i.ah, ptr %i.ae, align 8, !tbaa !12
  %i.ai = load double, ptr %i.f, align 8, !tbaa !12
  %i.aj = load double, ptr %gep.1.2, align 8, !tbaa !12
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.aj, double %i.ah) ; 2 uses
  store double %i.ak, ptr %i.ae, align 8, !tbaa !12
  %i.al = load double, ptr %i.j, align 8, !tbaa !12
  %i.am = load double, ptr %gep.2.2, align 8, !tbaa !12
  %i.an = tail call double @llvm.fmuladd.f64(double %i.al, double %i.am, double %i.ak) ; 2 uses
  store double %i.an, ptr %i.ae, align 8, !tbaa !12
  %i.ao = load double, ptr %i.n, align 8, !tbaa !12
  %i.ap = load double, ptr %gep.3.2, align 8, !tbaa !12
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.ap, double %i.an)
  store double %i.aq, ptr %i.ae, align 8, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 5 uses
  store double 0.000000e+00, ptr %i.ar, align 8, !tbaa !12
  %i.as = load double, ptr %i.b, align 8, !tbaa !12
  %i.at = load double, ptr %invariant.gep.3, align 8, !tbaa !12
  %i.au = tail call double @llvm.fmuladd.f64(double %i.as, double %i.at, double 0.000000e+00) ; 2 uses
  store double %i.au, ptr %i.ar, align 8, !tbaa !12
  %i.av = load double, ptr %i.f, align 8, !tbaa !12
  %i.aw = load double, ptr %gep.1.3, align 8, !tbaa !12
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.av, double %i.aw, double %i.au) ; 2 uses
  store double %i.ax, ptr %i.ar, align 8, !tbaa !12
  %i.ay = load double, ptr %i.j, align 8, !tbaa !12
  %i.az = load double, ptr %gep.2.3, align 8, !tbaa !12
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.az, double %i.ax) ; 2 uses
  store double %i.ba, ptr %i.ar, align 8, !tbaa !12
  %i.bb = load double, ptr %i.n, align 8, !tbaa !12
  %i.bc = load double, ptr %gep.3.3, align 8, !tbaa !12
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.bc, double %i.ba)
  store double %i.bd, ptr %i.ar, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !13

bb.b:                                             ; preds = %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @MultMatrixHPoint(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.HPointStruct) align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly byval(%struct.HPointStruct) align 8 captures(none) %2) local_unnamed_addr #3 !guid !16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load <8 x double>, ptr %1, align 8, !tbaa !12 ; 4 uses
  %i.e = shufflevector <8 x double> %i.d, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.f = shufflevector <8 x double> %i.d, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.g = shufflevector <8 x double> %i.d, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.h = shufflevector <8 x double> %i.d, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load <1 x double>, ptr %2, align 8
  %i.l = load <1 x double>, ptr %i.a, align 8
  %i.m = load <1 x double>, ptr %i.b, align 8
  %i.n = load double, ptr %i.c, align 8, !tbaa !18
  %i.o = shufflevector <1 x double> %i.l, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.p = fmul <2 x double> %i.o, %i.e
  %i.q = shufflevector <1 x double> %i.k, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.r = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> %i.f, <2 x double> %i.p)
  %i.s = shufflevector <1 x double> %i.m, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.t = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> %i.g, <2 x double> %i.r)
  %i.u = insertelement <2 x double> poison, double %i.n, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %i.h, <2 x double> %i.t)
  store <2 x double> %i.w, ptr %0, align 8, !tbaa !12
  %i.x = load <8 x double>, ptr %i.i, align 8, !tbaa !12 ; 4 uses
  %i.y = shufflevector <8 x double> %i.x, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.z = fmul <2 x double> %i.o, %i.y
  %i.aa = shufflevector <8 x double> %i.x, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> %i.aa, <2 x double> %i.z)
  %i.ac = shufflevector <8 x double> %i.x, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> %i.ac, <2 x double> %i.ab)
  %i.ae = shufflevector <8 x double> %i.x, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %i.ae, <2 x double> %i.ad)
  store <2 x double> %i.af, ptr %i.j, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @CopyMatrix(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 !guid !19 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #14 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %0, i64 128, i1 false), !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.a, %.loopexit.loopexit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @IdentMatrix() local_unnamed_addr #6 !guid !20 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #14 ; 8 uses
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !12
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, i8 0, i64 32, i1 false)
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store double 1.000000e+00, ptr %.sroa.51.0..sroa_idx, align 8, !tbaa !12
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, i8 0, i64 32, i1 false)
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store double 1.000000e+00, ptr %.sroa.62.0..sroa_idx, align 8, !tbaa !12
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx, i8 0, i64 32, i1 false)
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store double 1.000000e+00, ptr %.sroa.73.0..sroa_idx, align 8, !tbaa !12
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @TranslateMatrix(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #6 !guid !21 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #14 ; 11 uses
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !12
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i, i8 0, i64 32, i1 false)
  %.sroa.51.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store double 1.000000e+00, ptr %.sroa.51.0..sroa_idx.i, align 8, !tbaa !12
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, i8 0, i64 32, i1 false)
  %.sroa.62.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store double 1.000000e+00, ptr %.sroa.62.0..sroa_idx.i, align 8, !tbaa !12
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.sroa.73.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store double 1.000000e+00, ptr %.sroa.73.0..sroa_idx.i, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %0, ptr %i.c, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store double %1, ptr %i.d, align 8, !tbaa !12
  store double %2, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !12
  ret ptr %i.a
}

; Function Attrs: nofree nounwind memory(readwrite, argmem: none, target_mem: none) uwtable
define dso_local noalias noundef ptr @RotateMatrix(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #8 !guid !22 {
bb.a:
  %i.a = fmul double %0, f0x3F91DF46A2529E84      ; 2 uses
  %i.b = tail call double @cos(double noundef %i.a) #15, !tbaa !7 ; 2 uses
  %i.c = tail call double @sin(double noundef %i.a) #15, !tbaa !7 ; 2 uses
  %i.d = fmul double %1, f0x3F91DF46A2529E84      ; 2 uses
  %i.e = tail call double @cos(double noundef %i.d) #15, !tbaa !7 ; 2 uses
  %i.f = tail call double @sin(double noundef %i.d) #15, !tbaa !7 ; 2 uses
  %i.g = fmul double %2, f0x3F91DF46A2529E84      ; 2 uses
  %i.h = tail call double @cos(double noundef %i.g) #15, !tbaa !7 ; 2 uses
  %i.i = tail call double @sin(double noundef %i.g) #15, !tbaa !7 ; 2 uses
  %i.j = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #14 ; 10 uses
  store double 1.000000e+00, ptr %i.j, align 8, !tbaa !12
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i, i8 0, i64 32, i1 false)
  %.sroa.51.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %.sroa.62.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx.i, i8 0, i64 32, i1 false)
  %.sroa.73.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store double 1.000000e+00, ptr %.sroa.73.0..sroa_idx.i, align 8, !tbaa !12
  %i.l = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #14 ; 10 uses
  %.sroa.5.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i37, i8 0, i64 32, i1 false)
  %.sroa.51.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store double 1.000000e+00, ptr %.sroa.51.0..sroa_idx.i38, align 8, !tbaa !12
  %.sroa.6.0..sroa_idx.i39 = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i39, i8 0, i64 32, i1 false)
  %.sroa.62.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %.sroa.7.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx.i41, i8 0, i64 32, i1 false)
  %.sroa.73.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  store double 1.000000e+00, ptr %.sroa.73.0..sroa_idx.i42, align 8, !tbaa !12
  %i.m = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #14 ; 10 uses
  %.sroa.5.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %.sroa.51.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.6.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i45, i8 0, i64 32, i1 false)
  %.sroa.62.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store double 1.000000e+00, ptr %.sroa.62.0..sroa_idx.i46, align 8, !tbaa !12
  %.sroa.7.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx.i47, i8 0, i64 32, i1 false)
  %.sroa.73.0..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  store double 1.000000e+00, ptr %.sroa.73.0..sroa_idx.i48, align 8, !tbaa !12
  %i.o = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #14 ; 9 uses
  store double 1.000000e+00, ptr %i.o, align 8, !tbaa !12
  %.sroa.5.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i49, i8 0, i64 32, i1 false)
  %.sroa.51.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store double 1.000000e+00, ptr %.sroa.51.0..sroa_idx.i50, align 8, !tbaa !12
  %.sroa.6.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i51, i8 0, i64 32, i1 false)
  %.sroa.62.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store double 1.000000e+00, ptr %.sroa.62.0..sroa_idx.i52, align 8, !tbaa !12
  %.sroa.7.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx.i53, i8 0, i64 32, i1 false)
  %.sroa.73.0..sroa_idx.i54 = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  store double 1.000000e+00, ptr %.sroa.73.0..sroa_idx.i54, align 8, !tbaa !12
  %i.p = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #14 ; 9 uses
  store double 1.000000e+00, ptr %i.p, align 8, !tbaa !12
  %.sroa.5.0..sroa_idx.i55 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i55, i8 0, i64 32, i1 false)
  %.sroa.51.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store double 1.000000e+00, ptr %.sroa.51.0..sroa_idx.i56, align 8, !tbaa !12
  %.sroa.6.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i57, i8 0, i64 32, i1 false)
  %.sroa.62.0..sroa_idx.i58 = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  store double 1.000000e+00, ptr %.sroa.62.0..sroa_idx.i58, align 8, !tbaa !12
  %.sroa.7.0..sroa_idx.i59 = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx.i59, i8 0, i64 32, i1 false)
  %.sroa.73.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  store double 1.000000e+00, ptr %.sroa.73.0..sroa_idx.i60, align 8, !tbaa !12
  store double %i.b, ptr %.sroa.51.0..sroa_idx.i, align 8, !tbaa !12
  %i.q = fneg double %i.c
  store double %i.q, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store double %i.c, ptr %i.r, align 8, !tbaa !12
  store double %i.b, ptr %.sroa.62.0..sroa_idx.i, align 8, !tbaa !12
  store double %i.e, ptr %i.l, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store double %i.f, ptr %i.s, align 8, !tbaa !12
  %i.t = fneg double %i.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store double %i.t, ptr %i.u, align 8, !tbaa !12
  store double %i.e, ptr %.sroa.62.0..sroa_idx.i40, align 8, !tbaa !12
  store double %i.h, ptr %i.m, align 8, !tbaa !12
  %i.v = fneg double %i.i
  store double %i.v, ptr %.sroa.5.0..sroa_idx.i43, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store double %i.i, ptr %i.w, align 8, !tbaa !12
  store double %i.h, ptr %.sroa.51.0..sroa_idx.i44, align 8, !tbaa !12
  tail call void @MultMatrixMatrix(ptr noundef nonnull %i.j, ptr noundef nonnull %i.l, ptr noundef nonnull %i.o)
  tail call void @MultMatrixMatrix(ptr noundef nonnull %i.o, ptr noundef nonnull %i.m, ptr noundef nonnull %i.p)
  ret ptr %i.p
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @ScaleMatrix(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #6 !guid !23 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #14 ; 8 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i, i8 0, i64 32, i1 false)
  %.sroa.51.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, i8 0, i64 32, i1 false)
  %.sroa.62.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx.i, i8 0, i64 32, i1 false)
  %.sroa.73.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store double 1.000000e+00, ptr %.sroa.73.0..sroa_idx.i, align 8, !tbaa !12
  store double %0, ptr %i.a, align 8, !tbaa !12
  store double %1, ptr %.sroa.51.0..sroa_idx.i, align 8, !tbaa !12
  store double %2, ptr %.sroa.62.0..sroa_idx.i, align 8, !tbaa !12
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @RotatePoint(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ObjPointStruct) align 8 captures(none) initializes((0, 48)) %0, ptr nofree noundef readonly byval(%struct.ObjPointStruct) align 8 captures(none) %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #10 !guid !24 {
bb.a:
  %5 = alloca %struct.HPointStruct, align 8       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @PointToHPoint(ptr dead_on_unwind nonnull writable sret(%struct.HPointStruct) align 8 %5, ptr noundef nonnull byval(%struct.ObjPointStruct) align 8 %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.a = call ptr @RotateMatrix(double noundef %2, double noundef %3, double noundef %4) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !25
  ret void
}

declare void @PointToHPoint(ptr dead_on_unwind writable sret(%struct.HPointStruct) align 8, ptr noundef byval(%struct.ObjPointStruct) align 8) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @PrintMatrix(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 !guid !26 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load double, ptr %i.f, align 8, !tbaa !12
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.a, double noundef %i.c, double noundef %i.e, double noundef %i.g) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load double, ptr %i.i, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load double, ptr %i.k, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load double, ptr %i.m, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load double, ptr %i.o, align 8, !tbaa !12
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.j, double noundef %i.l, double noundef %i.n, double noundef %i.p) ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load double, ptr %i.r, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = load double, ptr %i.t, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = load double, ptr %i.v, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load double, ptr %i.x, align 8, !tbaa !12
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.s, double noundef %i.u, double noundef %i.w, double noundef %i.y) ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.af = load double, ptr %i.ae, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !12
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %i.ab, double noundef %i.ad, double noundef %i.af, double noundef %i.ah) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 -552082963297988119}
!9 = !{i64 8345986534522124200}
!10 = !{i64 -3639215751849914832}
!11 = !{!"double", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = distinct !{!13, !15}
!14 = !{i64 -3950174275942632858}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{i64 6913016205936325410}
!17 = !{!"HPointStruct", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!18 = !{!17, !11, i64 24}
!19 = !{i64 -1841606824574004575}
!20 = !{i64 -2683518992336864131}
!21 = !{i64 -5435028440542150178}
!22 = !{i64 -3291513798119176197}
!23 = !{i64 4842317750833072150}
!24 = !{i64 -3507312013641045975}
!25 = !{i64 0, i64 8, !12, i64 8, i64 8, !12, i64 16, i64 8, !12, i64 24, i64 8, !12, i64 32, i64 8, !12, i64 40, i64 8, !12}
!26 = !{i64 -7767893929008193372}
end_hunk_0
