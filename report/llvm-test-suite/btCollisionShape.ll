inline.NumInlined: 47
inline.NumDeleted: 23
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btTransform = type { %class.btMatrix3x3, %class.btVector3 }
%class.btMatrix3x3 = type { [3 x %class.btVector3] }
%class.btVector3 = type { [4 x float] }

$_ZN16btCollisionShapeD2Ev = comdat any

$_ZN16btCollisionShapeD0Ev = comdat any

@gContactThresholdFactor = dso_local local_unnamed_addr global float 2.000000e-02, align 4
@_ZTV16btCollisionShape = dso_local unnamed_addr constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTI16btCollisionShape, ptr @_ZN16btCollisionShapeD2Ev, ptr @_ZN16btCollisionShapeD0Ev, ptr @__cxa_pure_virtual, ptr @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf, ptr @_ZNK16btCollisionShape20getAngularMotionDiscEv, ptr @_ZNK16btCollisionShape27getContactBreakingThresholdEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@_ZTI16btCollisionShape = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS16btCollisionShape }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS16btCollisionShape = dso_local constant [19 x i8] c"16btCollisionShape\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @btBulletCollisionProbe() local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %1, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %class.btTransform, align 4         ; 9 uses
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store float 1.000000e+00, ptr %3, align 4, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.f = load ptr, ptr %0, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = load float, ptr %i.i, align 8, !tbaa !8  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load float, ptr %i.k, align 8, !tbaa !8  ; 2 uses
  %i.m = fsub float %i.j, %i.l                    ; 2 uses
  %i.n = fadd float %i.j, %i.l
  %i.o = load <2 x float>, ptr %5, align 8, !tbaa !8 ; 3 uses
  %i.p = load <2 x float>, ptr %4, align 8, !tbaa !8 ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.o, %i.p
  %i.q = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop16 = fsub <2 x float> %i.o, %i.p ; 2 uses
  %foldExtExtBinop18 = fmul <2 x float> %foldExtExtBinop16, %foldExtExtBinop16
  %i.r = extractelement <2 x float> %foldExtExtBinop18, i64 1
  %i.s = call float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.r)
  %i.t = call noundef float @llvm.fmuladd.f32(float %i.m, float %i.m, float %i.s)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.t)
  %i.u = fmul float %sqrt.i, 5.000000e-01
  store float %i.u, ptr %2, align 4, !tbaa !8
  %i.v = fadd <2 x float> %i.o, %i.p
  %i.w = fmul <2 x float> %i.v, splat (float 5.000000e-01)
  %i.x = fmul float %i.n, 5.000000e-01
  %.sroa.3.12.vec.insert.i10 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.x, i64 0
  store <2 x float> %i.w, ptr %1, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i10, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: uwtable
define dso_local noundef float @_ZNK16btCollisionShape27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef float %i.c(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.e = load float, ptr @gContactThresholdFactor, align 4, !tbaa !8
  %i.f = fmul float %i.d, %i.e
  ret float %i.f
}

; Function Attrs: uwtable
define dso_local noundef float @_ZNK16btCollisionShape20getAngularMotionDiscEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %class.btVector3, align 4           ; 6 uses
  %i.a = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = load ptr, ptr %0, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.e = load float, ptr %1, align 4, !tbaa !8    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !8  ; 2 uses
  %i.h = fmul float %i.g, %i.g
  %i.i = call float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !8  ; 2 uses
  %i.l = call noundef float @llvm.fmuladd.f32(float %i.k, float %i.k, float %i.i)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.l)
  %i.m = load float, ptr %i.a, align 4, !tbaa !8
  %i.n = fadd float %i.m, %sqrt.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret float %i.n
}

; Function Attrs: uwtable
define dso_local void @_ZNK16btCollisionShape21calculateTemporalAabbERK11btTransformRK9btVector3S5_fRS3_S6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, float noundef %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6)
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %8 = load float, ptr %7, align 4, !tbaa !8      ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %10 = load float, ptr %9, align 4, !tbaa !8     ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %12 = load float, ptr %11, align 4, !tbaa !8
  %13 = fmul float %4, %12                        ; 3 uses
  %14 = fcmp ogt float %13, 0.000000e+00          ; 2 uses
  %15 = fadd float %8, %13
  %16 = fadd float %10, %13
  %.058 = select i1 %14, float %10, float %16
  %.055 = select i1 %14, float %15, float %8
  %i.d = load float, ptr %3, align 4, !tbaa !8    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !8  ; 2 uses
  %i.g = fmul float %i.f, %i.f
  %i.h = tail call float @llvm.fmuladd.f32(float %i.d, float %i.d, float %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !8  ; 2 uses
  %i.k = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.h)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.k)
  %i.l = load ptr, ptr %0, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %17 = load <2 x float>, ptr %5, align 4, !tbaa !8 ; 2 uses
  %18 = load <2 x float>, ptr %2, align 4, !tbaa !8
  %19 = insertelement <2 x float> poison, float %4, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = fmul <2 x float> %20, %18                 ; 3 uses
  %22 = fcmp ogt <2 x float> %21, zeroinitializer ; 2 uses
  %23 = fadd <2 x float> %17, %21
  %24 = select <2 x i1> %22, <2 x float> %17, <2 x float> %23
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %25 = load <2 x float>, ptr %6, align 4, !tbaa !8 ; 2 uses
  %26 = fadd <2 x float> %25, %21
  %27 = select <2 x i1> %22, <2 x float> %26, <2 x float> %25
  %28 = tail call noundef float %i.n(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %29 = fmul float %sqrt.i, %28
  %i.o = fmul float %4, %29                       ; 3 uses
  store <2 x float> %24, ptr %5, align 4
  store float %.058, ptr %9, align 4
  store float 0.000000e+00, ptr %.sroa.619.0..sroa_idx, align 4, !tbaa !12
  store <2 x float> %27, ptr %6, align 4
  store float %.055, ptr %7, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !12
  %30 = load <2 x float>, ptr %5, align 4, !tbaa !8
  %31 = insertelement <2 x float> poison, float %i.o, i64 0
  %32 = shufflevector <2 x float> %31, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %33 = fsub <2 x float> %30, %32
  store <2 x float> %33, ptr %5, align 4, !tbaa !8
  %34 = load float, ptr %9, align 4, !tbaa !8
  %35 = fsub float %34, %i.o
  store float %35, ptr %9, align 4, !tbaa !8
  %36 = load <2 x float>, ptr %6, align 4, !tbaa !8
  %37 = fadd <2 x float> %32, %36
  store <2 x float> %37, ptr %6, align 4, !tbaa !8
  %38 = load float, ptr %7, align 4, !tbaa !8
  %39 = fadd float %i.o, %38
  store float %39, ptr %7, align 4, !tbaa !8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN16btCollisionShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN16btCollisionShapeD0Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #9
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"vtable pointer", !7, i64 0}
!12 = !{!6, !6, i64 0}
end_hunk_0
